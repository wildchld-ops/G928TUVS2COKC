.class Lcom/android/phone/photoring/PhotoRingScreen$7;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/PhotoRingScreen;->checkMobileData()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoRingScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen$7;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$7;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2500(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$7;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-virtual {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_photoring_enable_mobile_data_show"

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$7;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->enableMobileData()V
    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2600(Lcom/android/phone/photoring/PhotoRingScreen;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
