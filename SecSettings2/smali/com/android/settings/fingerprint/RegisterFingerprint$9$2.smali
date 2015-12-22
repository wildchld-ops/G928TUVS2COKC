.class Lcom/android/settings/fingerprint/RegisterFingerprint$9$2;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint$9;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$2;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$2;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiLevel:I
    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$500(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$2;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z
    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$2;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$2;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1200(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$2;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$2;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->setViewVisibility(Landroid/view/ViewGroup;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2000(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/view/ViewGroup;Z)V

    return-void
.end method
