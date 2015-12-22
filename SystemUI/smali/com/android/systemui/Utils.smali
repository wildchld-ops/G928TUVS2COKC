.class public Lcom/android/systemui/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final ENCRYPT_ERROR_NAME:Ljava/lang/String; = "error_not_encrypted"

.field public static final LARGE_TEXT_SCALE:F = 1.3f

.field public static final PROPERTY_ENCRYPT_NAME:Ljava/lang/String; = "vold.encrypt_progress"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDeviceEncrypting()Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "vold.encrypt_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "error_not_encrypted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static updateFontSize(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p2}, Lcom/android/systemui/Utils;->updateFontSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method public static updateFontSize(Landroid/widget/TextView;I)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
