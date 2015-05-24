//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/messages/ConversationActor.java
//


#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/engine/ListEngine.h"
#include "im/actor/model/droidkit/engine/SyncKeyValue.h"
#include "im/actor/model/entity/Message.h"
#include "im/actor/model/entity/MessageState.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/messages/ConversationActor.h"
#include "im/actor/model/modules/messages/DialogsActor.h"
#include "im/actor/model/modules/messages/entity/OutUnreadMessage.h"
#include "im/actor/model/modules/messages/entity/OutUnreadMessagesStorage.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "java/io/IOException.h"
#include "java/lang/Long.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelModulesMessagesConversationActor () {
 @public
  AMPeer *peer_;
  id<DKListEngine> messages_;
  id<DKListEngine> media_;
  ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *messagesStorage_;
  DKActorRef *dialogsActor_;
  DKSyncKeyValue *pendingKeyValue_;
}

- (void)onInMessageWithAMMessage:(AMMessage *)message;

- (void)onMessageContentUpdatedWithLong:(jlong)rid
                       withAMAbsContent:(AMAbsContent *)content;

- (void)onMessageSentWithLong:(jlong)rid
                     withLong:(jlong)date;

- (void)onMessageDateChangeWithLong:(jlong)rid
                           withLong:(jlong)date;

- (void)onMessageErrorWithLong:(jlong)rid;

- (void)onMessagePlainReadWithLong:(jlong)date;

- (void)onMessagePlainReceivedWithLong:(jlong)date;

- (void)onMessagesDeletedWithJavaUtilList:(id<JavaUtilList>)rids;

- (void)onClearConversation;

- (void)onDeleteConversation;

- (void)onHistoryLoadedWithJavaUtilList:(id<JavaUtilList>)history;

- (void)savePending;

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesConversationActor, peer_, AMPeer *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesConversationActor, messages_, id<DKListEngine>)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesConversationActor, media_, id<DKListEngine>)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesConversationActor, messagesStorage_, ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesConversationActor, dialogsActor_, DKActorRef *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesConversationActor, pendingKeyValue_, DKSyncKeyValue *)

__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onInMessageWithAMMessage_(ImActorModelModulesMessagesConversationActor *self, AMMessage *message);

__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onMessageContentUpdatedWithLong_withAMAbsContent_(ImActorModelModulesMessagesConversationActor *self, jlong rid, AMAbsContent *content);

__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onMessageSentWithLong_withLong_(ImActorModelModulesMessagesConversationActor *self, jlong rid, jlong date);

__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onMessageDateChangeWithLong_withLong_(ImActorModelModulesMessagesConversationActor *self, jlong rid, jlong date);

__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onMessageErrorWithLong_(ImActorModelModulesMessagesConversationActor *self, jlong rid);

__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onMessagePlainReadWithLong_(ImActorModelModulesMessagesConversationActor *self, jlong date);

__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onMessagePlainReceivedWithLong_(ImActorModelModulesMessagesConversationActor *self, jlong date);

__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onMessagesDeletedWithJavaUtilList_(ImActorModelModulesMessagesConversationActor *self, id<JavaUtilList> rids);

__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onClearConversation(ImActorModelModulesMessagesConversationActor *self);

__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onDeleteConversation(ImActorModelModulesMessagesConversationActor *self);

__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onHistoryLoadedWithJavaUtilList_(ImActorModelModulesMessagesConversationActor *self, id<JavaUtilList> history);

__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_savePending(ImActorModelModulesMessagesConversationActor *self);

@interface ImActorModelModulesMessagesConversationActor_MessageContentUpdated () {
 @public
  jlong rid_;
  AMAbsContent *content_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesConversationActor_MessageContentUpdated, content_, AMAbsContent *)

@interface ImActorModelModulesMessagesConversationActor_HistoryLoaded () {
 @public
  id<JavaUtilList> messages_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesConversationActor_HistoryLoaded, messages_, id<JavaUtilList>)

@interface ImActorModelModulesMessagesConversationActor_MessageReceived () {
 @public
  jlong date_;
}

@end

@interface ImActorModelModulesMessagesConversationActor_MessageRead () {
 @public
  jlong date_;
}

@end

@interface ImActorModelModulesMessagesConversationActor_MessageSent () {
 @public
  jlong rid_;
  jlong date_;
}

@end

@interface ImActorModelModulesMessagesConversationActor_MessageDateChange () {
 @public
  jlong rid_;
  jlong date_;
}

@end

@interface ImActorModelModulesMessagesConversationActor_MessageError () {
 @public
  jlong rid_;
}

@end

@interface ImActorModelModulesMessagesConversationActor_MessagesDeleted () {
 @public
  id<JavaUtilList> rids_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesConversationActor_MessagesDeleted, rids_, id<JavaUtilList>)

@implementation ImActorModelModulesMessagesConversationActor

- (instancetype)initWithAMPeer:(AMPeer *)peer
withImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  ImActorModelModulesMessagesConversationActor_initWithAMPeer_withImActorModelModulesModules_(self, peer, messenger);
  return self;
}

- (void)preStart {
  messages_ = [self messagesWithAMPeer:peer_];
  media_ = [self mediaWithAMPeer:peer_];
  messagesStorage_ = new_ImActorModelModulesMessagesEntityOutUnreadMessagesStorage_init();
  IOSByteArray *data = [((DKSyncKeyValue *) nil_chk(pendingKeyValue_)) getWithLong:[((AMPeer *) nil_chk(peer_)) getUnuqueId]];
  if (data != nil) {
    @try {
      messagesStorage_ = ImActorModelModulesMessagesEntityOutUnreadMessagesStorage_fromBytesWithByteArray_(data);
    }
    @catch (JavaIoIOException *e) {
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    }
  }
  dialogsActor_ = [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) getDialogsActor];
}

- (void)onInMessageWithAMMessage:(AMMessage *)message {
  ImActorModelModulesMessagesConversationActor_onInMessageWithAMMessage_(self, message);
}

- (void)onMessageContentUpdatedWithLong:(jlong)rid
                       withAMAbsContent:(AMAbsContent *)content {
  ImActorModelModulesMessagesConversationActor_onMessageContentUpdatedWithLong_withAMAbsContent_(self, rid, content);
}

- (void)onMessageSentWithLong:(jlong)rid
                     withLong:(jlong)date {
  ImActorModelModulesMessagesConversationActor_onMessageSentWithLong_withLong_(self, rid, date);
}

- (void)onMessageDateChangeWithLong:(jlong)rid
                           withLong:(jlong)date {
  ImActorModelModulesMessagesConversationActor_onMessageDateChangeWithLong_withLong_(self, rid, date);
}

- (void)onMessageErrorWithLong:(jlong)rid {
  ImActorModelModulesMessagesConversationActor_onMessageErrorWithLong_(self, rid);
}

- (void)onMessagePlainReadWithLong:(jlong)date {
  ImActorModelModulesMessagesConversationActor_onMessagePlainReadWithLong_(self, date);
}

- (void)onMessagePlainReceivedWithLong:(jlong)date {
  ImActorModelModulesMessagesConversationActor_onMessagePlainReceivedWithLong_(self, date);
}

- (void)onMessagesDeletedWithJavaUtilList:(id<JavaUtilList>)rids {
  ImActorModelModulesMessagesConversationActor_onMessagesDeletedWithJavaUtilList_(self, rids);
}

- (void)onClearConversation {
  ImActorModelModulesMessagesConversationActor_onClearConversation(self);
}

- (void)onDeleteConversation {
  ImActorModelModulesMessagesConversationActor_onDeleteConversation(self);
}

- (void)onHistoryLoadedWithJavaUtilList:(id<JavaUtilList>)history {
  ImActorModelModulesMessagesConversationActor_onHistoryLoadedWithJavaUtilList_(self, history);
}

- (void)savePending {
  ImActorModelModulesMessagesConversationActor_savePending(self);
}

- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[AMMessage class]]) {
    ImActorModelModulesMessagesConversationActor_onInMessageWithAMMessage_(self, (AMMessage *) check_class_cast(message, [AMMessage class]));
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_MessageContentUpdated class]]) {
    ImActorModelModulesMessagesConversationActor_MessageContentUpdated *contentUpdated = (ImActorModelModulesMessagesConversationActor_MessageContentUpdated *) check_class_cast(message, [ImActorModelModulesMessagesConversationActor_MessageContentUpdated class]);
    ImActorModelModulesMessagesConversationActor_onMessageContentUpdatedWithLong_withAMAbsContent_(self, [((ImActorModelModulesMessagesConversationActor_MessageContentUpdated *) nil_chk(contentUpdated)) getRid], [contentUpdated getContent]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_MessageSent class]]) {
    ImActorModelModulesMessagesConversationActor_MessageSent *sent = (ImActorModelModulesMessagesConversationActor_MessageSent *) check_class_cast(message, [ImActorModelModulesMessagesConversationActor_MessageSent class]);
    ImActorModelModulesMessagesConversationActor_onMessageSentWithLong_withLong_(self, [((ImActorModelModulesMessagesConversationActor_MessageSent *) nil_chk(sent)) getRid], [sent getDate]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_MessageError class]]) {
    ImActorModelModulesMessagesConversationActor_MessageError *messageError = (ImActorModelModulesMessagesConversationActor_MessageError *) check_class_cast(message, [ImActorModelModulesMessagesConversationActor_MessageError class]);
    ImActorModelModulesMessagesConversationActor_onMessageErrorWithLong_(self, [((ImActorModelModulesMessagesConversationActor_MessageError *) nil_chk(messageError)) getRid]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_MessageRead class]]) {
    ImActorModelModulesMessagesConversationActor_onMessagePlainReadWithLong_(self, [((ImActorModelModulesMessagesConversationActor_MessageRead *) nil_chk(((ImActorModelModulesMessagesConversationActor_MessageRead *) check_class_cast(message, [ImActorModelModulesMessagesConversationActor_MessageRead class])))) getDate]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_MessageReceived class]]) {
    ImActorModelModulesMessagesConversationActor_onMessagePlainReceivedWithLong_(self, [((ImActorModelModulesMessagesConversationActor_MessageReceived *) nil_chk(((ImActorModelModulesMessagesConversationActor_MessageReceived *) check_class_cast(message, [ImActorModelModulesMessagesConversationActor_MessageReceived class])))) getDate]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_HistoryLoaded class]]) {
    ImActorModelModulesMessagesConversationActor_onHistoryLoadedWithJavaUtilList_(self, [((ImActorModelModulesMessagesConversationActor_HistoryLoaded *) nil_chk(((ImActorModelModulesMessagesConversationActor_HistoryLoaded *) check_class_cast(message, [ImActorModelModulesMessagesConversationActor_HistoryLoaded class])))) getMessages]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_ClearConversation class]]) {
    ImActorModelModulesMessagesConversationActor_onClearConversation(self);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_DeleteConversation class]]) {
    ImActorModelModulesMessagesConversationActor_onDeleteConversation(self);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_MessagesDeleted class]]) {
    ImActorModelModulesMessagesConversationActor_onMessagesDeletedWithJavaUtilList_(self, [((ImActorModelModulesMessagesConversationActor_MessagesDeleted *) nil_chk(((ImActorModelModulesMessagesConversationActor_MessagesDeleted *) check_class_cast(message, [ImActorModelModulesMessagesConversationActor_MessagesDeleted class])))) getRids]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_MessageDateChange class]]) {
    ImActorModelModulesMessagesConversationActor_onMessageDateChangeWithLong_withLong_(self, [((ImActorModelModulesMessagesConversationActor_MessageDateChange *) nil_chk(((ImActorModelModulesMessagesConversationActor_MessageDateChange *) check_class_cast(message, [ImActorModelModulesMessagesConversationActor_MessageDateChange class])))) getRid], [((ImActorModelModulesMessagesConversationActor_MessageDateChange *) nil_chk(((ImActorModelModulesMessagesConversationActor_MessageDateChange *) check_class_cast(message, [ImActorModelModulesMessagesConversationActor_MessageDateChange class])))) getDate]);
  }
  else {
    [self dropWithId:message];
  }
}

@end

void ImActorModelModulesMessagesConversationActor_initWithAMPeer_withImActorModelModulesModules_(ImActorModelModulesMessagesConversationActor *self, AMPeer *peer, ImActorModelModulesModules *messenger) {
  (void) ImActorModelModulesUtilsModuleActor_initWithImActorModelModulesModules_(self, messenger);
  self->peer_ = peer;
  self->pendingKeyValue_ = [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(messenger)) getMessagesModule])) getConversationPending];
}

ImActorModelModulesMessagesConversationActor *new_ImActorModelModulesMessagesConversationActor_initWithAMPeer_withImActorModelModulesModules_(AMPeer *peer, ImActorModelModulesModules *messenger) {
  ImActorModelModulesMessagesConversationActor *self = [ImActorModelModulesMessagesConversationActor alloc];
  ImActorModelModulesMessagesConversationActor_initWithAMPeer_withImActorModelModulesModules_(self, peer, messenger);
  return self;
}

void ImActorModelModulesMessagesConversationActor_onInMessageWithAMMessage_(ImActorModelModulesMessagesConversationActor *self, AMMessage *message) {
  if ([((id<DKListEngine>) nil_chk(self->messages_)) getValueWithKey:[((AMMessage *) nil_chk(message)) getEngineId]] != nil) {
    return;
  }
  [self->messages_ addOrUpdateItem:message];
  [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:new_ImActorModelModulesMessagesDialogsActor_InMessage_initWithAMPeer_withAMMessage_(self->peer_, message)];
  if ([message getSenderId] == [self myUid]) {
    [((JavaUtilArrayList *) nil_chk([((ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *) nil_chk(self->messagesStorage_)) getMessages])) addWithId:new_ImActorModelModulesMessagesEntityOutUnreadMessage_initWithLong_withLong_([message getRid], [message getDate])];
    ImActorModelModulesMessagesConversationActor_savePending(self);
  }
}

void ImActorModelModulesMessagesConversationActor_onMessageContentUpdatedWithLong_withAMAbsContent_(ImActorModelModulesMessagesConversationActor *self, jlong rid, AMAbsContent *content) {
  AMMessage *message = [((id<DKListEngine>) nil_chk(self->messages_)) getValueWithKey:rid];
  if (message == nil) {
    return;
  }
  AMMessage *updatedMsg = [((AMMessage *) nil_chk(message)) changeContentWithAMAbsContent:content];
  [self->messages_ addOrUpdateItem:updatedMsg];
  [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:new_ImActorModelModulesMessagesDialogsActor_MessageContentChanged_initWithAMPeer_withLong_withAMAbsContent_(self->peer_, rid, content)];
}

void ImActorModelModulesMessagesConversationActor_onMessageSentWithLong_withLong_(ImActorModelModulesMessagesConversationActor *self, jlong rid, jlong date) {
  AMMessage *msg = [((id<DKListEngine>) nil_chk(self->messages_)) getValueWithKey:rid];
  if (msg != nil && ([msg getMessageState] == AMMessageStateEnum_get_PENDING())) {
    for (ImActorModelModulesMessagesEntityOutUnreadMessage * __strong p in nil_chk([((ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *) nil_chk(self->messagesStorage_)) getMessages])) {
      if ([((ImActorModelModulesMessagesEntityOutUnreadMessage *) nil_chk(p)) getRid] == rid) {
        [((JavaUtilArrayList *) nil_chk([self->messagesStorage_ getMessages])) removeWithId:p];
        [((JavaUtilArrayList *) nil_chk([self->messagesStorage_ getMessages])) addWithId:new_ImActorModelModulesMessagesEntityOutUnreadMessage_initWithLong_withLong_(rid, date)];
        break;
      }
    }
    ImActorModelModulesMessagesConversationActor_savePending(self);
    AMMessage *updatedMsg = [((AMMessage *) nil_chk([msg changeDateWithLong:date])) changeStateWithAMMessageStateEnum:AMMessageStateEnum_get_SENT()];
    [self->messages_ addOrUpdateItem:updatedMsg];
    [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:new_ImActorModelModulesMessagesDialogsActor_MessageSent_initWithAMPeer_withLong_withLong_(self->peer_, rid, date)];
  }
}

void ImActorModelModulesMessagesConversationActor_onMessageDateChangeWithLong_withLong_(ImActorModelModulesMessagesConversationActor *self, jlong rid, jlong date) {
  AMMessage *msg = [((id<DKListEngine>) nil_chk(self->messages_)) getValueWithKey:rid];
  if (msg != nil && ([msg getMessageState] != AMMessageStateEnum_get_PENDING()) && ([msg getMessageState] != AMMessageStateEnum_get_ERROR())) {
    AMMessage *updatedMsg = [((AMMessage *) nil_chk([msg changeAllDateWithLong:date])) changeStateWithAMMessageStateEnum:AMMessageStateEnum_get_SENT()];
    [self->messages_ addOrUpdateItem:updatedMsg];
  }
}

void ImActorModelModulesMessagesConversationActor_onMessageErrorWithLong_(ImActorModelModulesMessagesConversationActor *self, jlong rid) {
  AMMessage *msg = [((id<DKListEngine>) nil_chk(self->messages_)) getValueWithKey:rid];
  if (msg != nil && ([msg getMessageState] == AMMessageStateEnum_get_PENDING() || [msg getMessageState] == AMMessageStateEnum_get_SENT())) {
    AMMessage *updatedMsg = [msg changeStateWithAMMessageStateEnum:AMMessageStateEnum_get_ERROR()];
    [self->messages_ addOrUpdateItem:updatedMsg];
    [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:new_ImActorModelModulesMessagesDialogsActor_MessageStateChanged_initWithAMPeer_withLong_withAMMessageStateEnum_(self->peer_, rid, AMMessageStateEnum_get_ERROR())];
  }
}

void ImActorModelModulesMessagesConversationActor_onMessagePlainReadWithLong_(ImActorModelModulesMessagesConversationActor *self, jlong date) {
  jboolean removed = NO;
  JavaUtilArrayList *messagesStorageMessages = [((ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *) nil_chk(self->messagesStorage_)) getMessages];
  {
    IOSObjectArray *a__ = [messagesStorageMessages toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[((JavaUtilArrayList *) nil_chk(messagesStorageMessages)) size] type:ImActorModelModulesMessagesEntityOutUnreadMessage_class_()]];
    ImActorModelModulesMessagesEntityOutUnreadMessage * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    ImActorModelModulesMessagesEntityOutUnreadMessage * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      ImActorModelModulesMessagesEntityOutUnreadMessage *p = *b__++;
      if ([((ImActorModelModulesMessagesEntityOutUnreadMessage *) nil_chk(p)) getDate] <= date) {
        AMMessage *msg = [((id<DKListEngine>) nil_chk(self->messages_)) getValueWithKey:[p getRid]];
        if (msg != nil && ([msg getMessageState] == AMMessageStateEnum_get_SENT() || [msg getMessageState] == AMMessageStateEnum_get_RECEIVED())) {
          AMMessage *updatedMsg = [msg changeStateWithAMMessageStateEnum:AMMessageStateEnum_get_READ()];
          [self->messages_ addOrUpdateItem:updatedMsg];
          [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:new_ImActorModelModulesMessagesDialogsActor_MessageStateChanged_initWithAMPeer_withLong_withAMMessageStateEnum_(self->peer_, [p getRid], AMMessageStateEnum_get_READ())];
          removed = YES;
          [((JavaUtilArrayList *) nil_chk([self->messagesStorage_ getMessages])) removeWithId:p];
        }
      }
    }
  }
  if (removed) {
    ImActorModelModulesMessagesConversationActor_savePending(self);
  }
}

void ImActorModelModulesMessagesConversationActor_onMessagePlainReceivedWithLong_(ImActorModelModulesMessagesConversationActor *self, jlong date) {
  for (ImActorModelModulesMessagesEntityOutUnreadMessage * __strong p in nil_chk([((ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *) nil_chk(self->messagesStorage_)) getMessages])) {
    if ([((ImActorModelModulesMessagesEntityOutUnreadMessage *) nil_chk(p)) getDate] <= date) {
      AMMessage *msg = [((id<DKListEngine>) nil_chk(self->messages_)) getValueWithKey:[p getRid]];
      if (msg != nil && [msg getMessageState] == AMMessageStateEnum_get_SENT()) {
        AMMessage *updatedMsg = [msg changeStateWithAMMessageStateEnum:AMMessageStateEnum_get_RECEIVED()];
        [self->messages_ addOrUpdateItem:updatedMsg];
        [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:new_ImActorModelModulesMessagesDialogsActor_MessageStateChanged_initWithAMPeer_withLong_withAMMessageStateEnum_(self->peer_, [p getRid], AMMessageStateEnum_get_RECEIVED())];
      }
    }
  }
}

void ImActorModelModulesMessagesConversationActor_onMessagesDeletedWithJavaUtilList_(ImActorModelModulesMessagesConversationActor *self, id<JavaUtilList> rids) {
  IOSLongArray *rids2 = [IOSLongArray newArrayWithLength:[((id<JavaUtilList>) nil_chk(rids)) size]];
  for (jint i = 0; i < rids2->size_; i++) {
    *IOSLongArray_GetRef(rids2, i) = [((JavaLangLong *) nil_chk([rids getWithInt:i])) longLongValue];
  }
  [((id<DKListEngine>) nil_chk(self->messages_)) removeItemsWithKeys:rids2];
  [((id<DKListEngine>) nil_chk(self->media_)) removeItemsWithKeys:rids2];
  AMMessage *topMessage = [self->messages_ getHeadValue];
  [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:new_ImActorModelModulesMessagesDialogsActor_MessageDeleted_initWithAMPeer_withAMMessage_(self->peer_, topMessage)];
}

void ImActorModelModulesMessagesConversationActor_onClearConversation(ImActorModelModulesMessagesConversationActor *self) {
  [((id<DKListEngine>) nil_chk(self->messages_)) clear];
  [((id<DKListEngine>) nil_chk(self->media_)) clear];
  [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:new_ImActorModelModulesMessagesDialogsActor_ChatClear_initWithAMPeer_(self->peer_)];
}

void ImActorModelModulesMessagesConversationActor_onDeleteConversation(ImActorModelModulesMessagesConversationActor *self) {
  [((id<DKListEngine>) nil_chk(self->messages_)) clear];
  [((id<DKListEngine>) nil_chk(self->media_)) clear];
  [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:new_ImActorModelModulesMessagesDialogsActor_ChatDelete_initWithAMPeer_(self->peer_)];
}

void ImActorModelModulesMessagesConversationActor_onHistoryLoadedWithJavaUtilList_(ImActorModelModulesMessagesConversationActor *self, id<JavaUtilList> history) {
  JavaUtilArrayList *updated = new_JavaUtilArrayList_init();
  jboolean isPendingChanged = NO;
  for (AMMessage * __strong historyMessage in nil_chk(history)) {
    if ([((id<DKListEngine>) nil_chk(self->messages_)) getValueWithKey:[((AMMessage *) nil_chk(historyMessage)) getEngineId]] != nil) {
      continue;
    }
    [updated addWithId:historyMessage];
    if ([historyMessage getMessageState] == AMMessageStateEnum_get_SENT()) {
      [((JavaUtilArrayList *) nil_chk([((ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *) nil_chk(self->messagesStorage_)) getMessages])) addWithId:new_ImActorModelModulesMessagesEntityOutUnreadMessage_initWithLong_withLong_([historyMessage getRid], [historyMessage getDate])];
      isPendingChanged = YES;
    }
  }
  if (isPendingChanged) {
    ImActorModelModulesMessagesConversationActor_savePending(self);
  }
  if ([updated size] > 0) {
    [((id<DKListEngine>) nil_chk(self->messages_)) addOrUpdateItems:updated];
  }
}

void ImActorModelModulesMessagesConversationActor_savePending(ImActorModelModulesMessagesConversationActor *self) {
  [((DKSyncKeyValue *) nil_chk(self->pendingKeyValue_)) putWithLong:[((AMPeer *) nil_chk(self->peer_)) getUnuqueId] withByteArray:[((ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *) nil_chk(self->messagesStorage_)) toByteArray]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor)

@implementation ImActorModelModulesMessagesConversationActor_MessageContentUpdated

- (instancetype)initWithLong:(jlong)rid
            withAMAbsContent:(AMAbsContent *)content {
  ImActorModelModulesMessagesConversationActor_MessageContentUpdated_initWithLong_withAMAbsContent_(self, rid, content);
  return self;
}

- (jlong)getRid {
  return rid_;
}

- (AMAbsContent *)getContent {
  return content_;
}

@end

void ImActorModelModulesMessagesConversationActor_MessageContentUpdated_initWithLong_withAMAbsContent_(ImActorModelModulesMessagesConversationActor_MessageContentUpdated *self, jlong rid, AMAbsContent *content) {
  (void) NSObject_init(self);
  self->rid_ = rid;
  self->content_ = content;
}

ImActorModelModulesMessagesConversationActor_MessageContentUpdated *new_ImActorModelModulesMessagesConversationActor_MessageContentUpdated_initWithLong_withAMAbsContent_(jlong rid, AMAbsContent *content) {
  ImActorModelModulesMessagesConversationActor_MessageContentUpdated *self = [ImActorModelModulesMessagesConversationActor_MessageContentUpdated alloc];
  ImActorModelModulesMessagesConversationActor_MessageContentUpdated_initWithLong_withAMAbsContent_(self, rid, content);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_MessageContentUpdated)

@implementation ImActorModelModulesMessagesConversationActor_HistoryLoaded

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)messages {
  ImActorModelModulesMessagesConversationActor_HistoryLoaded_initWithJavaUtilList_(self, messages);
  return self;
}

- (id<JavaUtilList>)getMessages {
  return messages_;
}

@end

void ImActorModelModulesMessagesConversationActor_HistoryLoaded_initWithJavaUtilList_(ImActorModelModulesMessagesConversationActor_HistoryLoaded *self, id<JavaUtilList> messages) {
  (void) NSObject_init(self);
  self->messages_ = messages;
}

ImActorModelModulesMessagesConversationActor_HistoryLoaded *new_ImActorModelModulesMessagesConversationActor_HistoryLoaded_initWithJavaUtilList_(id<JavaUtilList> messages) {
  ImActorModelModulesMessagesConversationActor_HistoryLoaded *self = [ImActorModelModulesMessagesConversationActor_HistoryLoaded alloc];
  ImActorModelModulesMessagesConversationActor_HistoryLoaded_initWithJavaUtilList_(self, messages);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_HistoryLoaded)

@implementation ImActorModelModulesMessagesConversationActor_MessageReceived

- (instancetype)initWithLong:(jlong)date {
  ImActorModelModulesMessagesConversationActor_MessageReceived_initWithLong_(self, date);
  return self;
}

- (jlong)getDate {
  return date_;
}

@end

void ImActorModelModulesMessagesConversationActor_MessageReceived_initWithLong_(ImActorModelModulesMessagesConversationActor_MessageReceived *self, jlong date) {
  (void) NSObject_init(self);
  self->date_ = date;
}

ImActorModelModulesMessagesConversationActor_MessageReceived *new_ImActorModelModulesMessagesConversationActor_MessageReceived_initWithLong_(jlong date) {
  ImActorModelModulesMessagesConversationActor_MessageReceived *self = [ImActorModelModulesMessagesConversationActor_MessageReceived alloc];
  ImActorModelModulesMessagesConversationActor_MessageReceived_initWithLong_(self, date);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_MessageReceived)

@implementation ImActorModelModulesMessagesConversationActor_MessageRead

- (instancetype)initWithLong:(jlong)date {
  ImActorModelModulesMessagesConversationActor_MessageRead_initWithLong_(self, date);
  return self;
}

- (jlong)getDate {
  return date_;
}

@end

void ImActorModelModulesMessagesConversationActor_MessageRead_initWithLong_(ImActorModelModulesMessagesConversationActor_MessageRead *self, jlong date) {
  (void) NSObject_init(self);
  self->date_ = date;
}

ImActorModelModulesMessagesConversationActor_MessageRead *new_ImActorModelModulesMessagesConversationActor_MessageRead_initWithLong_(jlong date) {
  ImActorModelModulesMessagesConversationActor_MessageRead *self = [ImActorModelModulesMessagesConversationActor_MessageRead alloc];
  ImActorModelModulesMessagesConversationActor_MessageRead_initWithLong_(self, date);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_MessageRead)

@implementation ImActorModelModulesMessagesConversationActor_MessageSent

- (instancetype)initWithLong:(jlong)rid
                    withLong:(jlong)date {
  ImActorModelModulesMessagesConversationActor_MessageSent_initWithLong_withLong_(self, rid, date);
  return self;
}

- (jlong)getDate {
  return date_;
}

- (jlong)getRid {
  return rid_;
}

@end

void ImActorModelModulesMessagesConversationActor_MessageSent_initWithLong_withLong_(ImActorModelModulesMessagesConversationActor_MessageSent *self, jlong rid, jlong date) {
  (void) NSObject_init(self);
  self->rid_ = rid;
  self->date_ = date;
}

ImActorModelModulesMessagesConversationActor_MessageSent *new_ImActorModelModulesMessagesConversationActor_MessageSent_initWithLong_withLong_(jlong rid, jlong date) {
  ImActorModelModulesMessagesConversationActor_MessageSent *self = [ImActorModelModulesMessagesConversationActor_MessageSent alloc];
  ImActorModelModulesMessagesConversationActor_MessageSent_initWithLong_withLong_(self, rid, date);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_MessageSent)

@implementation ImActorModelModulesMessagesConversationActor_MessageDateChange

- (instancetype)initWithLong:(jlong)rid
                    withLong:(jlong)date {
  ImActorModelModulesMessagesConversationActor_MessageDateChange_initWithLong_withLong_(self, rid, date);
  return self;
}

- (jlong)getDate {
  return date_;
}

- (jlong)getRid {
  return rid_;
}

@end

void ImActorModelModulesMessagesConversationActor_MessageDateChange_initWithLong_withLong_(ImActorModelModulesMessagesConversationActor_MessageDateChange *self, jlong rid, jlong date) {
  (void) NSObject_init(self);
  self->rid_ = rid;
  self->date_ = date;
}

ImActorModelModulesMessagesConversationActor_MessageDateChange *new_ImActorModelModulesMessagesConversationActor_MessageDateChange_initWithLong_withLong_(jlong rid, jlong date) {
  ImActorModelModulesMessagesConversationActor_MessageDateChange *self = [ImActorModelModulesMessagesConversationActor_MessageDateChange alloc];
  ImActorModelModulesMessagesConversationActor_MessageDateChange_initWithLong_withLong_(self, rid, date);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_MessageDateChange)

@implementation ImActorModelModulesMessagesConversationActor_MessageError

- (instancetype)initWithLong:(jlong)rid {
  ImActorModelModulesMessagesConversationActor_MessageError_initWithLong_(self, rid);
  return self;
}

- (jlong)getRid {
  return rid_;
}

@end

void ImActorModelModulesMessagesConversationActor_MessageError_initWithLong_(ImActorModelModulesMessagesConversationActor_MessageError *self, jlong rid) {
  (void) NSObject_init(self);
  self->rid_ = rid;
}

ImActorModelModulesMessagesConversationActor_MessageError *new_ImActorModelModulesMessagesConversationActor_MessageError_initWithLong_(jlong rid) {
  ImActorModelModulesMessagesConversationActor_MessageError *self = [ImActorModelModulesMessagesConversationActor_MessageError alloc];
  ImActorModelModulesMessagesConversationActor_MessageError_initWithLong_(self, rid);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_MessageError)

@implementation ImActorModelModulesMessagesConversationActor_MessagesDeleted

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)rids {
  ImActorModelModulesMessagesConversationActor_MessagesDeleted_initWithJavaUtilList_(self, rids);
  return self;
}

- (id<JavaUtilList>)getRids {
  return rids_;
}

@end

void ImActorModelModulesMessagesConversationActor_MessagesDeleted_initWithJavaUtilList_(ImActorModelModulesMessagesConversationActor_MessagesDeleted *self, id<JavaUtilList> rids) {
  (void) NSObject_init(self);
  self->rids_ = rids;
}

ImActorModelModulesMessagesConversationActor_MessagesDeleted *new_ImActorModelModulesMessagesConversationActor_MessagesDeleted_initWithJavaUtilList_(id<JavaUtilList> rids) {
  ImActorModelModulesMessagesConversationActor_MessagesDeleted *self = [ImActorModelModulesMessagesConversationActor_MessagesDeleted alloc];
  ImActorModelModulesMessagesConversationActor_MessagesDeleted_initWithJavaUtilList_(self, rids);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_MessagesDeleted)

@implementation ImActorModelModulesMessagesConversationActor_ClearConversation

- (instancetype)init {
  ImActorModelModulesMessagesConversationActor_ClearConversation_init(self);
  return self;
}

@end

void ImActorModelModulesMessagesConversationActor_ClearConversation_init(ImActorModelModulesMessagesConversationActor_ClearConversation *self) {
  (void) NSObject_init(self);
}

ImActorModelModulesMessagesConversationActor_ClearConversation *new_ImActorModelModulesMessagesConversationActor_ClearConversation_init() {
  ImActorModelModulesMessagesConversationActor_ClearConversation *self = [ImActorModelModulesMessagesConversationActor_ClearConversation alloc];
  ImActorModelModulesMessagesConversationActor_ClearConversation_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_ClearConversation)

@implementation ImActorModelModulesMessagesConversationActor_DeleteConversation

- (instancetype)init {
  ImActorModelModulesMessagesConversationActor_DeleteConversation_init(self);
  return self;
}

@end

void ImActorModelModulesMessagesConversationActor_DeleteConversation_init(ImActorModelModulesMessagesConversationActor_DeleteConversation *self) {
  (void) NSObject_init(self);
}

ImActorModelModulesMessagesConversationActor_DeleteConversation *new_ImActorModelModulesMessagesConversationActor_DeleteConversation_init() {
  ImActorModelModulesMessagesConversationActor_DeleteConversation *self = [ImActorModelModulesMessagesConversationActor_DeleteConversation alloc];
  ImActorModelModulesMessagesConversationActor_DeleteConversation_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_DeleteConversation)
