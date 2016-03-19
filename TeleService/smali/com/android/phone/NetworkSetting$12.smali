.class Lcom/android/phone/NetworkSetting$12;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->setMobileDataEnabled(Z)V
    invoke-static {v0, v2}, Lcom/android/phone/NetworkSetting;->access$4500(Lcom/android/phone/NetworkSetting;Z)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v1, -0x2712

    # setter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$3802(Lcom/android/phone/NetworkSetting;I)I

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$1400(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$1400(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/ProgressButtonPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$2700(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$2700(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/ProgressButtonPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method
