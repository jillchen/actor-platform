package im.actor.model.api.updates;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import com.droidkit.bser.Bser;
import com.droidkit.bser.BserObject;
import com.droidkit.bser.BserValues;
import com.droidkit.bser.BserWriter;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;
import im.actor.model.api.*;

public class UpdateGroupInvite extends Update {

    public static final int HEADER = 0x24;
    public static UpdateGroupInvite fromBytes(byte[] data) throws IOException {
        return Bser.parse(new UpdateGroupInvite(), data);
    }

    private int groupId;
    private long rid;
    private int inviteUid;
    private long date;

    public UpdateGroupInvite(int groupId, long rid, int inviteUid, long date) {
        this.groupId = groupId;
        this.rid = rid;
        this.inviteUid = inviteUid;
        this.date = date;
    }

    public UpdateGroupInvite() {

    }

    public int getGroupId() {
        return this.groupId;
    }

    public long getRid() {
        return this.rid;
    }

    public int getInviteUid() {
        return this.inviteUid;
    }

    public long getDate() {
        return this.date;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.groupId = values.getInt(1);
        this.rid = values.getLong(9);
        this.inviteUid = values.getInt(5);
        this.date = values.getLong(8);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.groupId);
        writer.writeLong(9, this.rid);
        writer.writeInt(5, this.inviteUid);
        writer.writeLong(8, this.date);
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
