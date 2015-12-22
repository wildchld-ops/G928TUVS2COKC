.class Lcom/android/settings/MediaFormatSdPreference$1;
.super Ljava/lang/Object;
.source "MediaFormatSdPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MediaFormatSdPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MediaFormatSdPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormatSdPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/MediaFormatSdPreference$1;->this$0:Lcom/android/settings/MediaFormatSdPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/MediaFormatSdPreference$1;->this$0:Lcom/android/settings/MediaFormatSdPreference;

    const/16 v2, 0x37

    # invokes: Lcom/android/settings/MediaFormatSdPreference;->runKeyguardConfirmation(I)Z
    invoke-static {v1, v2}, Lcom/android/settings/MediaFormatSdPreference;->access$000(Lcom/android/settings/MediaFormatSdPreference;I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "MediaFormatSdPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConfirmationActivityResult("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/MediaFormatSdPreference$1;->this$0:Lcom/android/settings/MediaFormatSdPreference;

    # invokes: Lcom/android/settings/MediaFormatSdPreference;->establishFinalConfirmationState()V
    invoke-static {v1}, Lcom/android/settings/MediaFormatSdPreference;->access$100(Lcom/android/settings/MediaFormatSdPreference;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
