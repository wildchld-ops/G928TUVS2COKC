.class Lcom/android/settings/fingerprint/RegisterFingerprint$22$1;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint$22;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$22;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint$22;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$22$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$22$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$22;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$22;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v2, 0x7f1001c8

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
