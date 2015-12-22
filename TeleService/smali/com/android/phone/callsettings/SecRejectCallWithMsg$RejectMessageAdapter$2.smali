.class Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;
.super Ljava/lang/Object;
.source "SecRejectCallWithMsg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->access$300(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    # invokes: Lcom/android/phone/callsettings/SecRejectCallWithMsg;->deleteRejectMessage(I)V
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->access$400(Lcom/android/phone/callsettings/SecRejectCallWithMsg;I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    # getter for: Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->rejectMsgList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->access$500(Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->access$300(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    # invokes: Lcom/android/phone/callsettings/SecRejectCallWithMsg;->updateRejectMessage()V
    invoke-static {v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->access$600(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    # invokes: Lcom/android/phone/callsettings/SecRejectCallWithMsg;->refreshRejectList()V
    invoke-static {v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->access$700(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    return-void
.end method
