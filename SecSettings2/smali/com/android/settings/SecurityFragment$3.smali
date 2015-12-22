.class Lcom/android/settings/SecurityFragment$3;
.super Ljava/lang/Object;
.source "SecurityFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecurityFragment;->handleInstallMyKnox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecurityFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SecurityFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SecurityFragment$3;->this$0:Lcom/android/settings/SecurityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/SecurityFragment$3;->this$0:Lcom/android/settings/SecurityFragment;

    # getter for: Lcom/android/settings/SecurityFragment;->mBtnInstallMyKnox:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/SecurityFragment;->access$400(Lcom/android/settings/SecurityFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settings/SecurityFragment$3;->this$0:Lcom/android/settings/SecurityFragment;

    # getter for: Lcom/android/settings/SecurityFragment;->mLayoutInstallMyKnox:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/SecurityFragment;->access$500(Lcom/android/settings/SecurityFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method
