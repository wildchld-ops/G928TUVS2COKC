.class Lcom/android/phone/NetworkModeSpinner$3;
.super Ljava/lang/Object;
.source "NetworkModeSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModeSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModeSpinner;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModeSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModeSpinner$3;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$3;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick, position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$3;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v0, p3}, Lcom/android/phone/NetworkModeSpinner;->setSelectedItemType2(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$3;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mListPopupWindow:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/phone/NetworkModeSpinner;->access$100(Lcom/android/phone/NetworkModeSpinner;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$3;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mListPopupWindow:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/phone/NetworkModeSpinner;->access$100(Lcom/android/phone/NetworkModeSpinner;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$3;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mListPopupWindow:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/phone/NetworkModeSpinner;->access$100(Lcom/android/phone/NetworkModeSpinner;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$3;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v0, p3}, Lcom/android/phone/NetworkModeSpinner;->setSelectedItem(I)V

    goto :goto_0
.end method
