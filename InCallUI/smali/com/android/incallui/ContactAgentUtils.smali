.class public Lcom/android/incallui/ContactAgentUtils;
.super Ljava/lang/Object;
.source "ContactAgentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ContactAgentUtils$ContactAgentReceiver;
    }
.end annotation


# static fields
.field public static ACTION_CONTACT_ORIGINAL_IMAGE:Ljava/lang/String;

.field public static ACTION_CONTACT_ORIGINAL_IMAGE_RESULT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.samsung.android.coreapps.contact.ACTION_CONTACT_ORIGINAL_IMAGE_RESULT"

    sput-object v0, Lcom/android/incallui/ContactAgentUtils;->ACTION_CONTACT_ORIGINAL_IMAGE_RESULT:Ljava/lang/String;

    const-string v0, "com.samsung.android.coreapps.contact.ACTION_CONTACT_ORIGINAL_IMAGE"

    sput-object v0, Lcom/android/incallui/ContactAgentUtils;->ACTION_CONTACT_ORIGINAL_IMAGE:Ljava/lang/String;

    return-void
.end method

.method public static getPresenceIcon(Landroid/content/Context;I)I
    .locals 2

    const/4 v1, 0x5

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-static {v1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f020075

    goto :goto_0

    :sswitch_3
    const v0, 0x7f020074

    goto :goto_0

    :sswitch_4
    const v0, 0x7f020073

    goto :goto_0

    :sswitch_5
    const v0, 0x7f020077

    goto :goto_0

    :sswitch_6
    const v0, 0x7f020072

    goto :goto_0

    :sswitch_7
    const v0, 0x7f020076

    goto :goto_0

    :sswitch_8
    invoke-static {v1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    goto :goto_0

    :sswitch_9
    const v0, 0x7f02014b

    goto :goto_0

    :sswitch_a
    const v0, 0x7f020150

    goto :goto_0

    :sswitch_b
    const v0, 0x7f02014f

    goto :goto_0

    :sswitch_c
    const v0, 0x7f02014e

    goto :goto_0

    :sswitch_d
    const v0, 0x7f02014c

    goto :goto_0

    :sswitch_e
    const v0, 0x7f02014d

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_6
        0x3ef -> :sswitch_7
        0x7d1 -> :sswitch_8
        0x7d2 -> :sswitch_9
        0x7d3 -> :sswitch_a
        0x7d4 -> :sswitch_b
        0x7d5 -> :sswitch_c
        0x7d6 -> :sswitch_d
        0x7d7 -> :sswitch_e
    .end sparse-switch
.end method

.method public static getPresenceMode(Landroid/content/Context;J)I
    .locals 9

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v7, -0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_presence"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    const-string v0, "ContactAgentUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPresenceMode for contactId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :catch_0
    move-exception v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public static isSupportContactAgent()Z
    .locals 16

    const/4 v13, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v14

    if-nez v14, :cond_0

    move v12, v13

    :goto_0
    return v12

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v5, 0x4

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v13}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v11

    const/4 v14, -0x1

    if-ne v11, v14, :cond_1

    const-string v14, "ContactAgentUtils"

    const-string v15, "isSupportContactAgent returns false because of CONTACT_SERVICE_OFF"

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v13

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :try_start_0
    invoke-static {v9}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->isAuth(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    const-string v13, "ContactAgentUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isSupportContactAgent returns "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v12, v13

    goto :goto_0
.end method

.method public static startContactAgent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/ContactAgentUtils;->isSupportContactAgent()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ContactAgentUtils"

    const-string v2, "startContactAgent"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/incallui/ContactAgentUtils;->ACTION_CONTACT_ORIGINAL_IMAGE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.coreapps"

    const-string v3, "com.samsung.android.coreapps.contact.transaction.ContactService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "PHONENUMBER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method
