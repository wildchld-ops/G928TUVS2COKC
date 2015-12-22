.class Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$700(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v3

    if-gt p3, v3, :cond_0

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$400()I

    move-result v3

    if-eq v3, v2, :cond_2

    :cond_0
    const-string v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ItemLongClickListener mEnrolledFingerCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I
    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$700(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v1, 0x1

    :goto_1
    sget v3, Lcom/android/settings/fingerprint/FingerprintSettings;->FINGERPRINTS_MAX:I

    if-gt v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerStatus:I
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$800(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v3

    shl-int v4, v2, v1

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p3, :cond_4

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$900(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/app/NotificationManager;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$900(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/app/NotificationManager;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v3, p3, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->startSelectListUI(II)V

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
