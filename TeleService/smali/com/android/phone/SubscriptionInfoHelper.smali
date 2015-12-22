.class public Lcom/android/phone/SubscriptionInfoHelper;
.super Ljava/lang/Object;
.source "SubscriptionInfoHelper.java"


# static fields
.field private static mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/phone/SubscriptionInfoHelper;->mSubId:I

    return-void
.end method

.method public static addExtrasToIntent(Landroid/content/Intent;Landroid/telephony/SubscriptionInfo;)V
    .locals 2
    .param p0    # Landroid/content/Intent;
    .param p1    # Landroid/telephony/SubscriptionInfo;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionId"

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionLabel"

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
