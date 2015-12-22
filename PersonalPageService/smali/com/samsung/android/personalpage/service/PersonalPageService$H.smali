.class Lcom/samsung/android/personalpage/service/PersonalPageService$H;
.super Landroid/os/Handler;
.source "PersonalPageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/personalpage/service/PersonalPageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final EVT_CHECK_USER_ID:I = 0x404

.field private static final EVT_LOCALE_CHANGED:I = 0x402

.field private static final EVT_PRIVATE_KEEP_ON:I = 0x407

.field private static final EVT_PRIVATE_MODE_OFF:I = 0x405

.field private static final EVT_PRIVATE_MODE_ON:I = 0x406

.field private static final EVT_SERVICE_STOP:I = 0x400

.field private static final EVT_USER_SWITCHED:I = 0x403

.field private static final EVT_VERIFY_USER:I = 0x401


# instance fields
.field private final mMsgCodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    const/16 v1, 0x401

    const-string v2, "EVT_VERIFY_USER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    const/16 v1, 0x402

    const-string v2, "EVT_LOCALE_CHANGED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    const/16 v1, 0x403

    const-string v2, "EVT_USER_SWITCHED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    const/16 v1, 0x404

    const-string v2, "EVT_CHECK_USER_ID"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    const/16 v1, 0x405

    const-string v2, "EVT_PRIVATE_MODE_OFF"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    const/16 v1, 0x406

    const-string v2, "EVT_PRIVATE_MODE_ON"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    const/16 v1, 0x400

    const-string v2, "EVT_SERVICE_STOP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    const/16 v1, 0x407

    const-string v2, "EVT_PRIVATE_KEEP_ON"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private codeToString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "PersonalPageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->codeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0, v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handleVerifyUser(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # invokes: Lcom/samsung/android/personalpage/service/PersonalPageService;->handleUpdateLocale()V
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$000(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # invokes: Lcom/samsung/android/personalpage/service/PersonalPageService;->handleUserSwitch()V
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$100(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    goto :goto_0

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # invokes: Lcom/samsung/android/personalpage/service/PersonalPageService;->handlePrivateModeOff(Z)V
    invoke-static {v0, v4}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$200(Lcom/samsung/android/personalpage/service/PersonalPageService;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # invokes: Lcom/samsung/android/personalpage/service/PersonalPageService;->handlePrivateModeOff(Z)V
    invoke-static {v0, v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$200(Lcom/samsung/android/personalpage/service/PersonalPageService;Z)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # invokes: Lcom/samsung/android/personalpage/service/PersonalPageService;->handlePrivateModeOn()V
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$300(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # invokes: Lcom/samsung/android/personalpage/service/PersonalPageService;->cleanUp()V
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$400(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->stopSelf()V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # invokes: Lcom/samsung/android/personalpage/service/PersonalPageService;->handlePrivateModeKeepOn()V
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$500(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
