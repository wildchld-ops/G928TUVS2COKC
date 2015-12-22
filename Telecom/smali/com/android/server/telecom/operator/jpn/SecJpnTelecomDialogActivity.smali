.class public Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;
.super Landroid/app/Activity;
.source "SecJpnTelecomDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoPrefixCheckbox:Z

.field private dialog:Landroid/app/Dialog;

.field private handle:Landroid/net/Uri;

.field private intent:Landroid/content/Intent;

.field private isLocalNetwork:Z

.field private prefixCode:Ljava/lang/String;

.field private prefixName:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field private uriString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->autoPrefixCheckbox:Z

    iput-boolean v1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->isLocalNetwork:Z

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->handle:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->uriString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method private getCallSettingsPreference()Landroid/content/SharedPreferences;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.phone"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string v1, "network_service_settings"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "getCallSettingsPreference() NameNotFoundException"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCountryCodeName()Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;
    .locals 11

    const/4 v2, 0x0

    const/4 v7, 0x0

    new-instance v6, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;

    invoke-direct {v6}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;-><init>()V

    invoke-direct {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getCallSettingsPreference()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.nextiprovider/network_service"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v3, :cond_4

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v0, v1

    new-array v4, v0, [Ljava/lang/String;

    move v0, v7

    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    aget-object v5, v1, v0

    aget-object v7, v4, v0

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "international_dialing_assist_country_code_index"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "international_dialing_assist_country_name"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "international_dialing_assist_country_code"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    aget-object v1, v9, v1

    const/4 v2, 0x0

    aget-object v2, v10, v2

    :cond_1
    sget-object v4, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cursor != null (COUNTRY_CODE_INDEX_KEY) "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v1}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->setName(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->setCode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    :goto_2
    return-object v0

    :cond_4
    if-eqz v8, :cond_2

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "international_dialing_assist_country_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "international_dialing_assist_country_code_index"

    const/4 v2, -0x1

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v9, v1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "international_dialing_assist_country_code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "international_dialing_assist_country_code_index"

    const/4 v4, -0x1

    invoke-interface {v8, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->setName(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->setCode(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception Caught."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v6

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v6

    goto :goto_2
.end method

.method private getIDDCodeName()Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;
    .locals 9

    const/4 v7, 0x0

    const/4 v2, 0x0

    new-instance v6, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;

    invoke-direct {v6}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;-><init>()V

    invoke-direct {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getCallSettingsPreference()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.nextiprovider/network_service"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v3, :cond_4

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v0, v1

    new-array v4, v0, [Ljava/lang/String;

    move v0, v7

    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    aget-object v5, v1, v0

    aget-object v7, v4, v0

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "international_access_index"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "international_name"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "international_access_code"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v1, "WORLD CALL"

    const-string v2, "009130010"

    :cond_1
    sget-object v4, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cursor != null (INTERNATIONAL_INDEX_KEY) "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v1}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->setName(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->setCode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    :goto_2
    return-object v0

    :cond_4
    if-eqz v8, :cond_2

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "international_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "international_access_index"

    const/4 v2, -0x1

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WORLD CALL"

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "international_access_code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "international_access_index"

    const/4 v4, -0x1

    invoke-interface {v8, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "009130010"

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->setName(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->setCode(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception Caught."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v6

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v6

    goto :goto_2
.end method

.method private makeCountryCodePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->sPatternCountryCode:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->uriString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    const v4, 0x7f0800cc

    invoke-virtual {p0, v4}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "39"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v2, "international_dial_assist_kdi"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private makeIDDCodePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->sPatternInterPrefix:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->uriString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0800cc

    invoke-virtual {p0, v3}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeTwoLineMultipleChoiceItems()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v7, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-boolean v3, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->isLocalNetwork:Z

    if-eqz v3, :cond_0

    const-string v3, "title"

    const v4, 0x7f0800c9

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->prefixName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "title"

    const v4, 0x7f0800cb

    invoke-virtual {p0, v4}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v3, "num"

    iget-object v4, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->prefixCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "num"

    iget-object v3, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->uriString:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const-string v3, "title"

    const v4, 0x7f0800c8

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->prefixName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "title"

    const v4, 0x7f0800ca

    invoke-virtual {p0, v4}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private processOutgoingCallIntent()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    const-string v1, "check_pass_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/server/telecom/CallReceiver;->processOutgoingCallIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->sendBroadcastToReceiver()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendBroadcastToReceiver()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    const-string v2, "is_incoming_call"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    const-class v2, Lcom/android/server/telecom/CallReceiver;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "Sending broadcast as user to CallReceiver- SecJpnTelecomDialogActivity"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private showInternationalPrefixDialog()V
    .locals 8

    const/4 v6, 0x2

    iget-boolean v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->isLocalNetwork:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getIDDCodeName()Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->prefixName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->makeIDDCodePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->prefixCode:Ljava/lang/String;

    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800c7

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$1;

    invoke-direct {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->makeTwoLineMultipleChoiceItems()Ljava/util/List;

    move-result-object v3

    const v4, 0x7f040002

    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "num"

    aput-object v2, v5, v1

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$1;-><init>(Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v7, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->dialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getCountryCodeName()Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->prefixName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->makeCountryCodePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->prefixCode:Ljava/lang/String;

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x7f0d0006
        0x7f0d0007
    .end array-data
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->processOutgoingCallIntent()Z

    :goto_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->finish()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->prefixCode:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " call intent is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->useJapanNetwork(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->isLocalNetwork:Z

    if-eqz v0, :cond_0

    const-string v3, "parcelable_call_intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->handle:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->handle:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->scheme:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->handle:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->uriString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "type_of_dialog"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type : %d, scheme : %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->scheme:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_0
    move v2, v0

    :cond_0
    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bundle or intent or dialog type is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->finish()V

    :cond_1
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->showInternationalPrefixDialog()V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x79
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->dialog:Landroid/app/Dialog;

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "isFinishing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
