.class Lcom/android/incallui/InVideoCallMenu$1;
.super Ljava/lang/Object;
.source "InVideoCallMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InVideoCallMenu;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InVideoCallMenu;


# direct methods
.method constructor <init>(Lcom/android/incallui/InVideoCallMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const v4, 0x7f0d0213

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # getter for: Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$000(Lcom/android/incallui/InVideoCallMenu;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    iget-object v1, v1, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f0d020e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # invokes: Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;
    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$100(Lcom/android/incallui/InVideoCallMenu;)Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # invokes: Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;
    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$100(Lcom/android/incallui/InVideoCallMenu;)Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage()V

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # invokes: Lcom/android/incallui/InVideoCallMenu;->updateVideoCallButtons()V
    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$200(Lcom/android/incallui/InVideoCallMenu;)V

    const-string v0, "outgoing_image_from_gallery"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # invokes: Lcom/android/incallui/InVideoCallMenu;->updateIncomingVideoCallButton()V
    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$300(Lcom/android/incallui/InVideoCallMenu;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # getter for: Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$000(Lcom/android/incallui/InVideoCallMenu;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    iget-object v1, v1, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f0d020f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # getter for: Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$000(Lcom/android/incallui/InVideoCallMenu;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    iget-object v1, v1, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0212

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # setter for: Lcom/android/incallui/InVideoCallMenu;->mIsSelectedImage:Z
    invoke-static {v0, v3}, Lcom/android/incallui/InVideoCallMenu;->access$402(Lcom/android/incallui/InVideoCallMenu;Z)Z

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # invokes: Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;
    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$100(Lcom/android/incallui/InVideoCallMenu;)Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->selectOutgoingImageFromMyFiles()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # getter for: Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$000(Lcom/android/incallui/InVideoCallMenu;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    iget-object v1, v1, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0211

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # invokes: Lcom/android/incallui/InVideoCallMenu;->captureSurfaceImage(Z)V
    invoke-static {v0, v3}, Lcom/android/incallui/InVideoCallMenu;->access$500(Lcom/android/incallui/InVideoCallMenu;Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # invokes: Lcom/android/incallui/InVideoCallMenu;->updateVideoCallButtons()V
    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$200(Lcom/android/incallui/InVideoCallMenu;)V

    const-string v0, "outgoing_image_from_gallery"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # invokes: Lcom/android/incallui/InVideoCallMenu;->updateIncomingVideoCallButton()V
    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$300(Lcom/android/incallui/InVideoCallMenu;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # getter for: Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$000(Lcom/android/incallui/InVideoCallMenu;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    iget-object v1, v1, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0210

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/InVideoCallMenu;->mIsSelectedImage:Z
    invoke-static {v0, v1}, Lcom/android/incallui/InVideoCallMenu;->access$402(Lcom/android/incallui/InVideoCallMenu;Z)Z

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # invokes: Lcom/android/incallui/InVideoCallMenu;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;
    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$100(Lcom/android/incallui/InVideoCallMenu;)Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->selectVideoFromMyFiles()V

    goto/16 :goto_0
.end method
