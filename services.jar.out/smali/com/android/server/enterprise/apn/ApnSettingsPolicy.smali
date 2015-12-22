.class public Lcom/android/server/enterprise/apn/ApnSettingsPolicy;
.super Landroid/app/enterprise/IApnSettingsPolicy$Stub;
.source "ApnSettingsPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;
    }
.end annotation


# static fields
.field public static AUTH_TYPE_CHAP:I = 0x0

.field public static AUTH_TYPE_NONE:I = 0x0

.field private static AUTH_TYPE_NOTSET:I = 0x0

.field public static AUTH_TYPE_PAP:I = 0x0

.field public static AUTH_TYPE_PAP_OR_CHAP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ApnSettingsPolicyService"


# instance fields
.field private dunRequired:Z

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    const/4 v0, 0x0

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NONE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_PAP:I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_CHAP:I

    const/4 v0, 0x3

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_PAP_OR_CHAP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/enterprise/IApnSettingsPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->dunRequired:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method private enforceApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getApnListConditionStr()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    :cond_0
    const-string v5, "ApnSettingsPolicyService"

    const-string v6, "No SIM "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v5, "gsm.sim.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mcc = \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mnc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    const-string v1, ""

    :try_start_0
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private isValidApnId(J)Z
    .locals 13

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, v4, p1

    if-gez v0, :cond_4

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string/jumbo v0, "numeric"

    aput-object v0, v2, v11

    const-string/jumbo v0, "type"

    aput-object v0, v2, v10

    :try_start_0
    const-string/jumbo v0, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-string v0, "ApnSettingsPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidApnId() row count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for apId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "dun"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v8, 0x0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return v8

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    const-string v0, "ApnSettingsPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidApnId() : invalid apId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p4, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setColumnValue: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private validateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addUpdateApn(Landroid/app/enterprise/ContextInfo;ZLandroid/app/enterprise/ApnSettings;)J
    .locals 37

    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v29, 0x1

    const-wide/16 v26, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez p3, :cond_0

    move-wide/from16 v34, v26

    :goto_0
    monitor-exit p0

    return-wide v34

    :cond_0
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getId()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getUser()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getServer()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getPassword()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getProxy()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getPort()I

    move-result v23

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMmsProxy()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMmsc()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getAuthType()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getApn()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v21, :cond_1

    if-nez v9, :cond_2

    :cond_1
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "Invalid value"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v34, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x41

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_3

    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "APN name maximum length (65)"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v34, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x78

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_4

    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "APN excedes maximum length (120)"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v34, -0x1

    goto :goto_0

    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMcc()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMnc()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMmsPort()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v17

    :try_start_2
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v15, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_5

    const-string v34, "*"

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v34

    if-eqz v34, :cond_5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    :cond_5
    if-nez p2, :cond_6

    const-wide/16 v34, 0x1

    cmp-long v34, v34, v6

    if-gtz v34, :cond_7

    :cond_6
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v34

    if-eqz v34, :cond_7

    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v34

    if-eqz v34, :cond_7

    if-eqz v21, :cond_7

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v34

    if-eqz v34, :cond_7

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v34

    if-eqz v34, :cond_7

    const/16 v34, -0x1

    move/from16 v0, v34

    move/from16 v1, v23

    if-gt v0, v1, :cond_7

    const/16 v34, -0x1

    move/from16 v0, v34

    if-gt v0, v15, :cond_7

    const/16 v34, -0x2

    move/from16 v0, v34

    if-gt v0, v10, :cond_7

    const/16 v34, 0x3

    move/from16 v0, v34

    if-ge v0, v10, :cond_14

    :cond_7
    const/16 v29, 0x0

    if-nez p2, :cond_8

    const-wide/16 v34, 0x1

    cmp-long v34, v34, v6

    if-lez v34, :cond_8

    const-string v34, "ApnSettingsPolicyService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "addUpdateAp() : invalid ap Id "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v21, :cond_9

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v34

    if-nez v34, :cond_a

    :cond_9
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp() : invalid ap name"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v34

    if-nez v34, :cond_c

    :cond_b
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp() : invalid ap apn"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v34

    if-nez v34, :cond_e

    :cond_d
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp() : invalid ap mcc"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    if-eqz v20, :cond_f

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v34

    if-nez v34, :cond_10

    :cond_f
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp() : invalid ap mnc"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const/16 v34, -0x1

    move/from16 v0, v34

    move/from16 v1, v23

    if-le v0, v1, :cond_11

    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp() : invalid ap port"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const/16 v34, -0x1

    move/from16 v0, v34

    if-le v0, v15, :cond_12

    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp() : invalid ap iMmsPort"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const/16 v34, -0x2

    move/from16 v0, v34

    if-gt v0, v10, :cond_13

    const/16 v34, 0x3

    move/from16 v0, v34

    if-ge v0, v10, :cond_14

    :cond_13
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp() : invalid ap authType"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_14
    :goto_1
    if-eqz v29, :cond_19

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const-string/jumbo v35, "phone"

    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_15

    const/16 v34, 0x4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_15

    const/16 v34, 0x0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/16 v34, 0x3

    move/from16 v0, v34

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v34, "name"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v35, "numeric"

    if-eqz v16, :cond_16

    if-nez v20, :cond_1a

    :cond_16
    const/16 v34, 0x0

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v35

    move-object/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v34, "mcc"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v34, "mnc"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "apn"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v34, "user"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v34, "server"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v34, "password"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v34, "proxy"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v35, "port"

    if-ltz v23, :cond_1b

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v35

    move-object/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v34, "mmsproxy"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v34, "mmsport"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v34, "mmsc"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1d

    const-string v34, "authtype"

    const/16 v35, -0x2

    move/from16 v0, v35

    if-ge v0, v10, :cond_1c

    const/16 v35, 0x4

    move/from16 v0, v35

    if-le v0, v10, :cond_1c

    :goto_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_17
    :goto_5
    const-string/jumbo v34, "type"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_18

    if-eqz v11, :cond_18

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_18

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_18

    const-string v34, "current"

    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_18
    invoke-virtual/range {v33 .. v33}, Landroid/content/ContentValues;->size()I

    move-result v34

    if-lez v34, :cond_21

    if-eqz p2, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    sget-object v35, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v31

    if-eqz v31, :cond_1e

    const/16 v29, 0x1

    :goto_6
    if-eqz v29, :cond_19

    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp Created rowUri : "

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v31 .. v31}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v26

    :cond_19
    :goto_7
    move-wide/from16 v34, v26

    goto/16 :goto_0

    :catch_0
    move-exception v14

    const/16 v29, 0x0

    :try_start_4
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v34

    monitor-exit p0

    throw v34

    :cond_1a
    :try_start_5
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_2

    :cond_1b
    const-string v34, ""

    goto/16 :goto_3

    :cond_1c
    sget v10, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    goto/16 :goto_4

    :cond_1d
    if-nez p2, :cond_17

    const/16 v34, -0x2

    move/from16 v0, v34

    if-ge v0, v10, :cond_17

    const/16 v34, 0x4

    move/from16 v0, v34

    if-le v0, v10, :cond_17

    const-string v34, "authtype"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    :catch_1
    move-exception v14

    :try_start_6
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    :cond_1e
    const/16 v29, 0x0

    goto :goto_6

    :cond_1f
    :try_start_7
    sget-object v34, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v34

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    move-object/from16 v2, v33

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    if-lez v25, :cond_20

    const/16 v29, 0x1

    :goto_8
    if-eqz v29, :cond_19

    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp Updated rowUri : "

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v31 .. v31}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v26

    goto/16 :goto_7

    :cond_20
    const/16 v29, 0x0

    goto :goto_8

    :cond_21
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp Error: Empty dataset."

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_7
.end method

.method public declared-synchronized deleteApn(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 8

    const/4 v3, 0x0

    monitor-enter p0

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const-wide/16 v4, 0x1

    cmp-long v4, v4, p2

    if-lez v4, :cond_1

    const-string v4, "ApnSettingsPolicyService"

    const-string v5, "deleteAp : apId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAp : deleted rowCount from ApTable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-lez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getApnList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/ApnSettings;",
            ">;"
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/16 v2, 0xf

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "name"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "mcc"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "mnc"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "apn"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "user"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "server"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "password"

    aput-object v3, v4, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "proxy"

    aput-object v3, v4, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "port"

    aput-object v3, v4, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "mmsproxy"

    aput-object v3, v4, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "mmsport"

    aput-object v3, v4, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "mmsc"

    aput-object v3, v4, v2

    const/16 v2, 0xd

    const-string v3, "authtype"

    aput-object v3, v4, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "type"

    aput-object v3, v4, v2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnListConditionStr()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    new-instance v10, Landroid/app/enterprise/ApnSettings;

    invoke-direct {v10}, Landroid/app/enterprise/ApnSettings;-><init>()V

    const-string v2, "_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Landroid/app/enterprise/ApnSettings;->setId(J)V

    const-string/jumbo v2, "name"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setName(Ljava/lang/String;)V

    const-string/jumbo v2, "mcc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setMcc(Ljava/lang/String;)V

    const-string/jumbo v2, "mnc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setMnc(Ljava/lang/String;)V

    const-string v2, "apn"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setApn(Ljava/lang/String;)V

    const-string/jumbo v2, "user"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setUser(Ljava/lang/String;)V

    const-string/jumbo v2, "server"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setServer(Ljava/lang/String;)V

    const-string/jumbo v2, "password"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setPassword(Ljava/lang/String;)V

    const-string/jumbo v2, "proxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setProxy(Ljava/lang/String;)V

    const-string/jumbo v2, "port"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/enterprise/ApnSettings;->setPort(I)V

    :cond_1
    const-string/jumbo v2, "mmsproxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    const-string/jumbo v2, "mmsport"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    const-string/jumbo v2, "mmsc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setMmsc(Ljava/lang/String;)V

    const-string v2, "authtype"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/app/enterprise/ApnSettings;->setAuthType(I)V

    :cond_2
    const-string/jumbo v2, "type"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move-object v8, v9

    :cond_4
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_0
    return-object v8

    :catch_0
    move-exception v13

    :goto_1
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    :catchall_1
    move-exception v2

    move-object v8, v9

    goto :goto_2

    :catch_1
    move-exception v13

    move-object v8, v9

    goto :goto_1
.end method

.method public getApnSettings(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/ApnSettings;
    .locals 18

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v15, -0x1

    const/4 v10, 0x0

    const-wide/16 v4, 0x1

    cmp-long v2, v4, p2

    if-lez v2, :cond_1

    const-string v2, "ApnSettingsPolicyService"

    const-string/jumbo v4, "getApnSettings : apId is invalid"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v8, Landroid/app/enterprise/ApnSettings;

    invoke-direct {v8}, Landroid/app/enterprise/ApnSettings;-><init>()V

    const-string v2, "_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Landroid/app/enterprise/ApnSettings;->setId(J)V

    const-string/jumbo v2, "name"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setName(Ljava/lang/String;)V

    const-string/jumbo v2, "mcc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMcc(Ljava/lang/String;)V

    const-string/jumbo v2, "mnc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMnc(Ljava/lang/String;)V

    const-string v2, "apn"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setApn(Ljava/lang/String;)V

    const-string/jumbo v2, "user"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setUser(Ljava/lang/String;)V

    const-string/jumbo v2, "server"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setServer(Ljava/lang/String;)V

    const-string/jumbo v2, "password"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setPassword(Ljava/lang/String;)V

    const-string/jumbo v2, "proxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setProxy(Ljava/lang/String;)V

    const-string/jumbo v2, "port"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v8, v14}, Landroid/app/enterprise/ApnSettings;->setPort(I)V

    :cond_2
    const-string/jumbo v2, "mmsproxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    const-string/jumbo v2, "mmsport"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    const-string/jumbo v2, "mmsc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMmsc(Ljava/lang/String;)V

    const-string v2, "authtype"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/enterprise/ApnSettings;->setAuthType(I)V

    :cond_3
    const-string/jumbo v2, "type"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_4
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v11

    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method public getPreferredApn(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ApnSettings;
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v0, "ApnSettingsPolicyService"

    const-string/jumbo v1, "getPreferredApn():"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPreferredApn():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1, v8, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnSettings(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/ApnSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v6

    :catch_0
    move-exception v10

    :try_start_1
    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPreferredApn Ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public declared-synchronized setPreferredApn(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 8

    const-wide/16 v6, 0x0

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v6, p2

    if-eqz v4, :cond_1

    cmp-long v4, v6, p2

    if-lez v4, :cond_1

    :try_start_1
    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPreferedAp() : invalid ap Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->isValidApnId(J)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "apn_id"

    cmp-long v5, v6, p2

    if-nez v5, :cond_2

    const-wide/16 p2, -0x1

    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    const/4 v2, 0x1

    :goto_1
    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPreferedAp() row count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
