package im.actor.sdk.controllers.calls;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.Menu;
import android.view.WindowManager;

import im.actor.core.entity.PeerType;
import im.actor.core.viewmodel.CallVM;
import im.actor.runtime.android.AndroidWebRTCRuntimeProvider;
import im.actor.sdk.ActorSDK;
import im.actor.sdk.R;
import im.actor.sdk.controllers.activity.BaseFragmentActivity;

import static im.actor.sdk.util.ActorSDKMessenger.messenger;

/**
 * Created by ex3ndr on 30.09.14.
 */
public class CallActivity extends BaseFragmentActivity {

    private long callId;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

//        Thread.setDefaultUncaughtExceptionHandler(
//                new UnhandledExceptionHandler(this));
////
//        AndroidWebRTCRuntimeProvider.postToHandler(new Runnable() {
//            @Override
//            public void run() {
//                Thread.setDefaultUncaughtExceptionHandler(
//                        new UnhandledExceptionHandler(CallActivity.this));
//
//            }
//        });

        getSupportActionBar().setTitle("Call");
        getSupportActionBar().hide();
        getSupportActionBar().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));

        if (savedInstanceState == null) {
            callId = getIntent().getLongExtra("callId", -1);
            Fragment callFragment = ActorSDK.sharedActor().getDelegate().fragmentForCall(callId);
            if (callFragment == null) {
                callFragment = CallFragment.create(callId);
            }
            showFragment(callFragment, false);
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflating menu
        getMenuInflater().inflate(R.menu.call_menu, menu);
        CallVM call = messenger().getCall(callId);
        if(call!=null && call.getPeer().getPeerType() != PeerType.GROUP){
            menu.findItem(R.id.members).setVisible(false);
        }
        return super.onCreateOptionsMenu(menu);
    }
}
