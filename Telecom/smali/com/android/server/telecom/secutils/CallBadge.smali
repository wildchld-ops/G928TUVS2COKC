.class public Lcom/android/server/telecom/secutils/CallBadge;
.super Ljava/lang/Object;
.source "CallBadge.java"


# static fields
.field private static final BADGE_PROVIDER_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "package"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "class"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "badgecount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/telecom/secutils/CallBadge;->BADGE_PROVIDER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "CallBadge"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static updateBadge(Landroid/content/Context;I)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "com.android.contacts"

    :cond_0
    const-string v1, "com.android.dialer.DialtactsActivity"

    const-string v3, "support_contacts_osup"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "com.android.contacts.activities.DialtactsActivity"

    :cond_1
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "do not update badge if user is not owner"

    invoke-static {v0, v4}, Lcom/android/server/telecom/secutils/CallBadge;->log(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_2
    :try_start_0
    invoke-static {v2, v0, v1, p1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "com.android.contacts"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.android.dialer"

    invoke-static {v2, v0, v1, p1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBadge(): count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/CallBadge;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "updateBadge(): BadgeProvider wasn\'t installed"

    invoke-static {v0, v4}, Lcom/android/server/telecom/secutils/CallBadge;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method
