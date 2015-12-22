.class Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;
.super Lcom/android/internal/telecom/ITelecomService$Stub;
.source "TelecomService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/TelecomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TelecomServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    invoke-direct {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptRingingCall()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "acceptRingingCall"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceModifyPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$1100(Lcom/android/server/telecom/TelecomService;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    const/4 v1, 0x4

    # invokes: Lcom/android/server/telecom/TelecomService;->sendRequestAsync(II)Lcom/android/server/telecom/TelecomService$MainThreadRequest;
    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/TelecomService;->access$2200(Lcom/android/server/telecom/TelecomService;II)Lcom/android/server/telecom/TelecomService$MainThreadRequest;

    return-void
.end method

.method public addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Adding new incoming call with phoneAccountHandle %s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$2500(Lcom/android/server/telecom/TelecomService;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceUserHandleMatchesCaller(Landroid/telecom/PhoneAccountHandle;)V
    invoke-static {v0, p1}, Lcom/android/server/telecom/TelecomService;->access$1900(Lcom/android/server/telecom/TelecomService;Landroid/telecom/PhoneAccountHandle;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telecom.action.INCOMING_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "is_incoming_call"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "android.telecom.extra.INCOMING_CALL_EXTRAS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "call.emergency.dial"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    const/16 v2, 0x8

    # invokes: Lcom/android/server/telecom/TelecomService;->sendRequestAsync(IILjava/lang/Object;)Lcom/android/server/telecom/TelecomService$MainThreadRequest;
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/telecom/TelecomService;->access$2600(Lcom/android/server/telecom/TelecomService;IILjava/lang/Object;)Lcom/android/server/telecom/TelecomService$MainThreadRequest;

    :goto_0
    return-void

    :cond_2
    const-string v0, "Null phoneAccountHandle. Ignoring request to add new incoming call"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/TelephonyUtil;->isPstnComponentName(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$2500(Lcom/android/server/telecom/TelecomService;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceUserHandleMatchesCaller(Landroid/telecom/PhoneAccountHandle;)V
    invoke-static {v0, p1}, Lcom/android/server/telecom/TelecomService;->access$1900(Lcom/android/server/telecom/TelecomService;Landroid/telecom/PhoneAccountHandle;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telecom.action.NEW_UNKNOWN_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$600(Lcom/android/server/telecom/TelecomService;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/server/telecom/CallReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "is_unknown_call"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$600(Lcom/android/server/telecom/TelecomService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Null phoneAccountHandle or not initiated by Telephony. Ignoring request to add new unknown call."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public cancelMissedCallsNotification()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "cancelMissedCallsNotification"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceModifyPermissionOrDefaultDialer()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$2400(Lcom/android/server/telecom/TelecomService;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    const/4 v1, 0x5

    # invokes: Lcom/android/server/telecom/TelecomService;->sendRequestAsync(II)Lcom/android/server/telecom/TelecomService$MainThreadRequest;
    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/TelecomService;->access$2200(Lcom/android/server/telecom/TelecomService;II)Lcom/android/server/telecom/TelecomService$MainThreadRequest;

    return-void
.end method

.method public clearAccounts(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforcePhoneAccountModificationForPackage(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/telecom/TelecomService;->access$1400(Lcom/android/server/telecom/TelecomService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->clearAccounts(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "clearAccounts %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$600(Lcom/android/server/telecom/TelecomService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump TelecomService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$100(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "mCallsManager: "

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$100(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/CallsManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    const-string v1, "mPhoneAccountRegistrar: "

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_0
.end method

.method public endCall()Z
    .locals 4

    const/4 v3, 0x1

    const-string v0, "endCall"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceModifyPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$1100(Lcom/android/server/telecom/TelecomService;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/telecom/TelecomService;->sendRequest(I)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/server/telecom/TelecomService;->access$2300(Lcom/android/server/telecom/TelecomService;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 6

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceModifyPermissionOrDefaultDialer()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$2400(Lcom/android/server/telecom/TelecomService;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->isVisibleToCaller(Landroid/telecom/PhoneAccountHandle;)Z
    invoke-static {v0, p1}, Lcom/android/server/telecom/TelecomService;->access$1000(Lcom/android/server/telecom/TelecomService;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%s is not visible for the calling user"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const-string v0, "content://icc/adn/"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getSubscriptionIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I

    move-result v1

    int-to-long v4, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "subId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getAllPhoneAccountHandles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getAllPhoneAccountHandles()Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/android/server/telecom/TelecomService;->filterForAccountsVisibleToCaller(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/server/telecom/TelecomService;->access$1200(Lcom/android/server/telecom/TelecomService;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getAllPhoneAccounts"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getAllPhoneAccounts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getAllPhoneAccounts()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    iget-object v3, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->isVisibleToCaller(Landroid/telecom/PhoneAccount;)Z
    invoke-static {v3, v0}, Lcom/android/server/telecom/TelecomService;->access$1300(Lcom/android/server/telecom/TelecomService;Landroid/telecom/PhoneAccount;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "getAllPhoneAccounts"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    return-object v1
.end method

.method public getAllPhoneAccountsCount()I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->getAllPhoneAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getAllPhoneAccountsCount"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getCallCapablePhoneAccounts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceReadPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$800(Lcom/android/server/telecom/TelecomService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/android/server/telecom/TelecomService;->filterForAccountsVisibleToCaller(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/server/telecom/TelecomService;->access$1200(Lcom/android/server/telecom/TelecomService;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "getCallCapablePhoneAccounts"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getCallState()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$100(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCurrentTtyMode()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceReadPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$800(Lcom/android/server/telecom/TelecomService;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    const/4 v1, 0x7

    # invokes: Lcom/android/server/telecom/TelecomService;->sendRequest(I)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/server/telecom/TelecomService;->access$2300(Lcom/android/server/telecom/TelecomService;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .locals 5

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceReadPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$800(Lcom/android/server/telecom/TelecomService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->isVisibleToCaller(Landroid/telecom/PhoneAccountHandle;)Z
    invoke-static {v1, v0}, Lcom/android/server/telecom/TelecomService;->access$1000(Lcom/android/server/telecom/TelecomService;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "No account found for the calling user"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "getDefaultOutgoingPhoneAccount"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getDefaultPhoneApp()Landroid/content/ComponentName;
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$600(Lcom/android/server/telecom/TelecomService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const v2, 0x7f080002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getLine1Number(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceReadPermissionOrDefaultDialer()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$2000(Lcom/android/server/telecom/TelecomService;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->isVisibleToCaller(Landroid/telecom/PhoneAccountHandle;)Z
    invoke-static {v0, p1}, Lcom/android/server/telecom/TelecomService;->access$1000(Lcom/android/server/telecom/TelecomService;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%s is not visible for the calling user"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getSubscriptionIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->getTelephonyManager()Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$2100(Lcom/android/server/telecom/TelecomService;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "getSubscriptionIdForPhoneAccount"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->isVisibleToCaller(Landroid/telecom/PhoneAccountHandle;)Z
    invoke-static {v0, p1}, Lcom/android/server/telecom/TelecomService;->access$1000(Lcom/android/server/telecom/TelecomService;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%s is not visible for the calling user"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccountInternal(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "getPhoneAccount %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getPhoneAccountsForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccountsForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/android/server/telecom/TelecomService;->filterForAccountsVisibleToCaller(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/server/telecom/TelecomService;->access$1200(Lcom/android/server/telecom/TelecomService;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getPhoneAccountsForPackage %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getPhoneAccountsSupportingScheme(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceReadPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$800(Lcom/android/server/telecom/TelecomService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getCallCapablePhoneAccounts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/android/server/telecom/TelecomService;->filterForAccountsVisibleToCaller(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/server/telecom/TelecomService;->access$1200(Lcom/android/server/telecom/TelecomService;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "getPhoneAccountsSupportingScheme %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v0, v1, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getSimCallManager()Landroid/telecom/PhoneAccountHandle;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->isVisibleToCaller(Landroid/telecom/PhoneAccountHandle;)Z
    invoke-static {v1, v0}, Lcom/android/server/telecom/TelecomService;->access$1000(Lcom/android/server/telecom/TelecomService;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%s is not visible for the calling user"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getSimCallManager"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getSimCallManagers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceReadPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$800(Lcom/android/server/telecom/TelecomService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getConnectionManagerPhoneAccounts()Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/android/server/telecom/TelecomService;->filterForAccountsVisibleToCaller(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/server/telecom/TelecomService;->access$1200(Lcom/android/server/telecom/TelecomService;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "getSimCallManagers"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->isVisibleToCaller(Landroid/telecom/PhoneAccountHandle;)Z
    invoke-static {v1, v0}, Lcom/android/server/telecom/TelecomService;->access$1000(Lcom/android/server/telecom/TelecomService;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "No account found for the calling user"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getUserSelectedOutgoingPhoneAccount"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceModifyPermissionOrDefaultDialer()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$2400(Lcom/android/server/telecom/TelecomService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->getTelephonyManager()Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$2100(Lcom/android/server/telecom/TelecomService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceModifyPermissionOrDefaultDialer()V
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$2400(Lcom/android/server/telecom/TelecomService;)V

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->isVisibleToCaller(Landroid/telecom/PhoneAccountHandle;)Z
    invoke-static {v1, p1}, Lcom/android/server/telecom/TelecomService;->access$1000(Lcom/android/server/telecom/TelecomService;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%s is not visible for the calling user"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getSubscriptionIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->getTelephonyManager()Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$2100(Lcom/android/server/telecom/TelecomService;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/telephony/TelephonyManager;->handlePinMmiForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public hasVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceReadPermissionOrDefaultDialer()V
    invoke-static {v2}, Lcom/android/server/telecom/TelecomService;->access$2000(Lcom/android/server/telecom/TelecomService;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->isVisibleToCaller(Landroid/telecom/PhoneAccountHandle;)Z
    invoke-static {v2, p1}, Lcom/android/server/telecom/TelecomService;->access$1000(Lcom/android/server/telecom/TelecomService;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "%s is not visible for the calling user"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v2}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getSubscriptionIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->getTelephonyManager()Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/server/telecom/TelecomService;->access$2100(Lcom/android/server/telecom/TelecomService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "getSubscriptionIdForPhoneAccount"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v1}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public isInCall()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceReadPermission()V
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$800(Lcom/android/server/telecom/TelecomService;)V

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$100(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceReadPermission()V
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$800(Lcom/android/server/telecom/TelecomService;)V

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$100(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTtySupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceReadPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$800(Lcom/android/server/telecom/TelecomService;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    const/4 v1, 0x6

    # invokes: Lcom/android/server/telecom/TelecomService;->sendRequest(I)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/server/telecom/TelecomService;->access$2300(Lcom/android/server/telecom/TelecomService;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceReadPermissionOrDefaultDialer()V
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$2000(Lcom/android/server/telecom/TelecomService;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->isVisibleToCaller(Landroid/telecom/PhoneAccountHandle;)Z
    invoke-static {v1, p1}, Lcom/android/server/telecom/TelecomService;->access$1000(Lcom/android/server/telecom/TelecomService;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%s is not visible for the calling user"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/telecom/PhoneAccountRegistrar;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "getSubscriptionIdForPhoneAccount"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    .locals 4

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/telecom/TelecomService;->enforcePhoneAccountModificationForPackage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/TelecomService;->access$1400(Lcom/android/server/telecom/TelecomService;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceRegisterCallProviderPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$1500(Lcom/android/server/telecom/TelecomService;)V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceRegisterSimSubscriptionPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$1600(Lcom/android/server/telecom/TelecomService;)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceRegisterConnectionManagerPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$1700(Lcom/android/server/telecom/TelecomService;)V

    :cond_2
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceRegisterMultiUser()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$1800(Lcom/android/server/telecom/TelecomService;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceUserHandleMatchesCaller(Landroid/telecom/PhoneAccountHandle;)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/TelecomService;->access$1900(Lcom/android/server/telecom/TelecomService;Landroid/telecom/PhoneAccountHandle;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "registerPhoneAccount %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public setSimCallManager(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceModifyPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$1100(Lcom/android/server/telecom/TelecomService;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->setSimCallManager(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "setSimCallManager"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceModifyPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$1100(Lcom/android/server/telecom/TelecomService;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "setUserSelectedOutgoingPhoneAccount"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public showInCallScreen(Z)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "showInCallScreen"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceReadPermissionOrDefaultDialer()V
    invoke-static {v2}, Lcom/android/server/telecom/TelecomService;->access$2000(Lcom/android/server/telecom/TelecomService;)V

    iget-object v2, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    :goto_0
    # invokes: Lcom/android/server/telecom/TelecomService;->sendRequestAsync(II)Lcom/android/server/telecom/TelecomService$MainThreadRequest;
    invoke-static {v2, v3, v0}, Lcom/android/server/telecom/TelecomService;->access$2200(Lcom/android/server/telecom/TelecomService;II)Lcom/android/server/telecom/TelecomService$MainThreadRequest;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public silenceRinger()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "silenceRinger"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceModifyPermission()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$1100(Lcom/android/server/telecom/TelecomService;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->sendRequestAsync(II)Lcom/android/server/telecom/TelecomService$MainThreadRequest;
    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/TelecomService;->access$2200(Lcom/android/server/telecom/TelecomService;II)Lcom/android/server/telecom/TelecomService$MainThreadRequest;

    return-void
.end method

.method public unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/telecom/TelecomService;->enforcePhoneAccountModificationForPackage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/TelecomService;->access$1400(Lcom/android/server/telecom/TelecomService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->enforceUserHandleMatchesCaller(Landroid/telecom/PhoneAccountHandle;)V
    invoke-static {v0, p1}, Lcom/android/server/telecom/TelecomService;->access$1900(Lcom/android/server/telecom/TelecomService;Landroid/telecom/PhoneAccountHandle;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomService$TelecomServiceImpl;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomService;->access$900(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "unregisterPhoneAccount %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
