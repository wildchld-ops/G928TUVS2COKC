.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v1, "logo_show"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierText:Lcom/android/keyguard/CarrierText;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/keyguard/CarrierText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierText:Lcom/android/keyguard/CarrierText;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/keyguard/CarrierText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/CarrierText;->setOperatorLogoView(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierText:Lcom/android/keyguard/CarrierText;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/keyguard/CarrierText;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    const-string v1, "KeyguardStatusBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logoShow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierText:Lcom/android/keyguard/CarrierText;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/keyguard/CarrierText;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierText:Lcom/android/keyguard/CarrierText;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/keyguard/CarrierText;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/keyguard/CarrierText;->setOperatorLogoView(Z)V

    goto :goto_0
.end method
