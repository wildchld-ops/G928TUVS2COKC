.class public Lcom/ime/framework/dbmanager/DbFileInfo;
.super Ljava/lang/Object;
.source "DbFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/dbmanager/DbFileInfo$1;,
        Lcom/ime/framework/dbmanager/DbFileInfo$dbFileChangeNotifier;,
        Lcom/ime/framework/dbmanager/DbFileInfo$DBType;
    }
.end annotation


# static fields
.field private static final DB_KEYSTR_BPMF:Ljava/lang/String; = "bpmf"

.field private static final DB_KEYSTR_CJI:Ljava/lang/String; = "CJI"

.field private static final DB_KEYSTR_DOUBLEPINYIN:Ljava/lang/String; = "doublepinyin"

.field private static final DB_KEYSTR_ENG:Ljava/lang/String; = "ENubUN"

.field private static final DB_KEYSTR_HK:Ljava/lang/String; = "ZHtbUNpsHK"

.field private static final DB_KEYSTR_HOTWORD:Ljava/lang/String; = "hotword"

.field private static final DB_KEYSTR_KOR:Ljava/lang/String; = "KOusUN"

.field private static final DB_KEYSTR_PINYIN:Ljava/lang/String; = "pinyin"

.field private static final DB_KEYSTR_SIMPLIFY:Ljava/lang/String; = "ZHsbUNps"

.field private static final DB_KEYSTR_TRACE:Ljava/lang/String; = "Trace"

.field private static final DB_KEYSTR_TW:Ljava/lang/String; = "ZHtbUNpsTW"

.field private static final DEBUG:Z = false

.field public static final HWR_DB_ASSET_PATH:Ljava/lang/String; = "hwrdb"

.field private static final HWR_DB_DEFAULT_PATH:Ljava/lang/String; = "/system/chn_sipdb/hwrdb/"

.field private static final HWR_DB_ENG_BIG_DB_FILE:Ljava/lang/String; = "Handwriting_ENubUN_curve_big_db.dat"

.field private static final HWR_DB_ENG_SML_DB_FILE:Ljava/lang/String; = "Handwriting_ENubUN_curve_sml_db.dat"

.field private static final HWR_DB_KOR_DB_FILE:Ljava/lang/String; = "Handwriting_KOusUN_db.dat"

.field private static final HWR_DB_KOR_DICT_FILE:Ljava/lang/String; = "Handwriting_KOusUN_dict.dict"

.field private static final HWR_DB_S_CHS_DB_FILE:Ljava/lang/String; = "Handwriting_ZHsbUNps_db.dat"

.field private static final HWR_DB_S_CHS_DICT_FILE:Ljava/lang/String; = "Handwriting_ZHsbUNps_dict.dict"

.field private static final HWR_DB_T_CHS_DB_FILE:Ljava/lang/String; = "Handwriting_ZHtbUNps_db.dat"

.field private static final HWR_DB_T_CHS_DICT_FILE:Ljava/lang/String; = "Handwriting_ZHtbUNps_dict.dict"

.field private static final TAG:Ljava/lang/String; = "DbFileInfo"

.field public static final XT9_DB_ASSET_PATH:Ljava/lang/String; = "xt9db"

.field public static final XT9_DB_CACHE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.inputmethod/cache/"

.field public static final XT9_DB_CDB_PATH:Ljava/lang/String; = "cdb"

.field public static final XT9_DB_DEFAULT_PATH:Ljava/lang/String; = "/system/T9DB/"

.field public static final XT9_DB_DOWNLOAD_PATH:Ljava/lang/String; = "/data/data/com.sec.android.inputmethod/ldb/"

.field public static final XT9_HOTWORD_HK:I = -0xe2

.field public static final XT9_HOTWORD_SIMPLIFIED:I = -0xe1

.field public static final XT9_HOTWORD_TW:I = -0xe0

.field public static final XT9_INVALID_DB_ID:I = -0x1

.field public static final XT9_LDB_ENG:I = 0x109

.field public static final XT9_LDB_HK:I = 0xe2

.field public static final XT9_LDB_KOR_CJI:I = 0x712

.field public static final XT9_LDB_KOR_DEFAULT:I = 0x112

.field public static final XT9_LDB_SIMPLIFIED:I = 0xe1

.field public static final XT9_LDB_TW:I = 0xe0

.field public static final XT9_TRACE_BPMF_TW:I = 0x6e0

.field public static final XT9_TRACE_DOUBLEPINYIN_SIMPLIFIED:I = 0x9e1

.field public static final XT9_TRACE_PINYIN_SIMPLIFIED:I = 0x5e1

.field private static mInstance:Lcom/ime/framework/dbmanager/DbFileInfo;


# instance fields
.field private isHWRLightVersion:Z

.field private mDBFileUpdatedStatus:Landroid/util/SparseBooleanArray;

.field private mDefaultLDBFileNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadLDBFileNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mdbChangeNoti:Lcom/ime/framework/dbmanager/DbFileInfo$dbFileChangeNotifier;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->isHWRLightVersion:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDefaultLDBFileNameMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDownloadLDBFileNameMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDBFileUpdatedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/ime/framework/dbmanager/DbFileInfo;->initFileInfo()V

    return-void
.end method

.method public static getInstance()Lcom/ime/framework/dbmanager/DbFileInfo;
    .locals 1

    sget-object v0, Lcom/ime/framework/dbmanager/DbFileInfo;->mInstance:Lcom/ime/framework/dbmanager/DbFileInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/dbmanager/DbFileInfo;

    invoke-direct {v0}, Lcom/ime/framework/dbmanager/DbFileInfo;-><init>()V

    sput-object v0, Lcom/ime/framework/dbmanager/DbFileInfo;->mInstance:Lcom/ime/framework/dbmanager/DbFileInfo;

    :cond_0
    sget-object v0, Lcom/ime/framework/dbmanager/DbFileInfo;->mInstance:Lcom/ime/framework/dbmanager/DbFileInfo;

    return-object v0
.end method

.method private initXT9LdbFileInfo(Lcom/ime/framework/dbmanager/DbFileInfo$DBType;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v3, 0x0

    sget-object v8, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;->XT9_DEFAULT_DB:Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    if-ne p1, v8, :cond_2

    new-instance v7, Ljava/io/File;

    const-string v8, "/system/T9DB/"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDefaultLDBFileNameMap:Landroid/util/SparseArray;

    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p1}, Lcom/ime/framework/dbmanager/DbFileInfo;->parseFileName(Landroid/util/SparseArray;Ljava/lang/String;Lcom/ime/framework/dbmanager/DbFileInfo$DBType;)I

    move-result v1

    iget-object v8, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mdbChangeNoti:Lcom/ime/framework/dbmanager/DbFileInfo$dbFileChangeNotifier;

    if-eqz v8, :cond_1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    iget-object v8, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mdbChangeNoti:Lcom/ime/framework/dbmanager/DbFileInfo$dbFileChangeNotifier;

    invoke-virtual {p1}, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;->ordinal()I

    move-result v9

    invoke-interface {v8, v9, v1, v4}, Lcom/ime/framework/dbmanager/DbFileInfo$dbFileChangeNotifier;->ondbFileChange(IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    sget-object v8, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;->XT9_DOWNLOAD_DB:Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    if-ne p1, v8, :cond_0

    new-instance v7, Ljava/io/File;

    const-string v8, "/data/data/com.sec.android.inputmethod/ldb/"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDownloadLDBFileNameMap:Landroid/util/SparseArray;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private parseFileName(Landroid/util/SparseArray;Ljava/lang/String;Lcom/ime/framework/dbmanager/DbFileInfo$DBType;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ime/framework/dbmanager/DbFileInfo$DBType;",
            ")I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    sget-object v1, Lcom/ime/framework/dbmanager/DbFileInfo$1;->$SwitchMap$com$ime$framework$dbmanager$DbFileInfo$DBType:[I

    invoke-virtual {p3}, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const-string v1, "ENubUN"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x109

    :cond_1
    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v1, "KOusUN"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "CJI"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x712

    goto :goto_1

    :cond_3
    const/16 v0, 0x112

    goto :goto_1

    :cond_4
    const-string v1, "ZHsbUNps"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "hotword"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, -0xe1

    goto :goto_1

    :cond_5
    const-string v1, "Trace"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "doublepinyin"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x9e1

    goto :goto_1

    :cond_6
    const-string v1, "pinyin"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x5e1

    goto :goto_1

    :cond_7
    const/16 v0, 0xe1

    goto :goto_1

    :cond_8
    const-string v1, "ZHtbUNpsHK"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "hotword"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v0, -0xe2

    goto :goto_1

    :cond_9
    const-string v1, "Trace"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0xe2

    goto :goto_1

    :cond_a
    const-string v1, "ZHtbUNpsTW"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "hotword"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, -0xe0

    goto/16 :goto_1

    :cond_b
    const-string v1, "Trace"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "bpmf"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x6e0

    goto/16 :goto_1

    :cond_c
    const/16 v0, 0xe0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private printFileInfo(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :cond_0
    if-nez v1, :cond_2

    const-string v2, "DbFileInfo"

    const-string v3, "no db file found!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const-string v2, "DbFileInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db file count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    const-string v3, "DbFileInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dB_Key="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", DB_Name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public IsHwrLightVer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->isHWRLightVersion:Z

    return v0
.end method

.method public defaultDbExists(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDefaultLDBFileNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public downloadDbExists(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDownloadLDBFileNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDBUpdateStatus(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDBFileUpdatedStatus:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDBFileUpdatedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public getDefaultDbMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDefaultLDBFileNameMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getDownloadDbMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDownloadLDBFileNameMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getInstalledDbNameWithDefaultPath(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDefaultLDBFileNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInstalledDbNameWithDownloadPath(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDownloadLDBFileNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public initFileInfo()V
    .locals 7

    sget-object v5, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;->XT9_DEFAULT_DB:Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    invoke-direct {p0, v5}, Lcom/ime/framework/dbmanager/DbFileInfo;->initXT9LdbFileInfo(Lcom/ime/framework/dbmanager/DbFileInfo$DBType;)V

    sget-object v5, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;->XT9_DOWNLOAD_DB:Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    invoke-direct {p0, v5}, Lcom/ime/framework/dbmanager/DbFileInfo;->initXT9LdbFileInfo(Lcom/ime/framework/dbmanager/DbFileInfo$DBType;)V

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/chn_sipdb/hwrdb/"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".dict"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->isHWRLightVersion:Z

    :cond_0
    return-void

    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->isHWRLightVersion:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public initFileInfo(Landroid/content/res/AssetManager;)V
    .locals 7

    if-eqz p1, :cond_2

    :try_start_0
    const-string v4, "xt9db"

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v4, v3, v2

    const-string v5, "cdb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDefaultLDBFileNameMap:Landroid/util/SparseArray;

    aget-object v5, v3, v2

    sget-object v6, Lcom/ime/framework/dbmanager/DbFileInfo$DBType;->XT9_DEFAULT_DB:Lcom/ime/framework/dbmanager/DbFileInfo$DBType;

    invoke-direct {p0, v4, v5, v6}, Lcom/ime/framework/dbmanager/DbFileInfo;->parseFileName(Landroid/util/SparseArray;Ljava/lang/String;Lcom/ime/framework/dbmanager/DbFileInfo$DBType;)I

    move-result v0

    iget-object v4, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mdbChangeNoti:Lcom/ime/framework/dbmanager/DbFileInfo$dbFileChangeNotifier;

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mdbChangeNoti:Lcom/ime/framework/dbmanager/DbFileInfo$dbFileChangeNotifier;

    const/4 v5, 0x0

    aget-object v6, v3, v2

    invoke-interface {v4, v5, v0, v6}, Lcom/ime/framework/dbmanager/DbFileInfo$dbFileChangeNotifier;->ondbFileChange(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :try_start_1
    const-string v4, "hwrdb"

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v4, v3, v2

    const-string v5, "Handwriting_ENubUN_curve_big_db.dat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->isHWRLightVersion:Z

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->isHWRLightVersion:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public isChineseLanguageSupported()Z
    .locals 2

    const/16 v1, 0xe1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDefaultLDBFileNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDownloadLDBFileNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultDBInfoEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDefaultLDBFileNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnglishLanguageSupported()Z
    .locals 2

    const/16 v1, 0x109

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDefaultLDBFileNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDownloadLDBFileNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHKLanguageSupported()Z
    .locals 2

    const/16 v1, 0xe2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDefaultLDBFileNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDownloadLDBFileNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKorDefaultLangSupported()Z
    .locals 2

    const/16 v1, 0x112

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDefaultLDBFileNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDownloadLDBFileNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKorLangCJISupported()Z
    .locals 2

    const/16 v1, 0x712

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDefaultLDBFileNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDownloadLDBFileNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKorLanguageSupported()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ime/framework/dbmanager/DbFileInfo;->isKorDefaultLangSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/dbmanager/DbFileInfo;->isKorLangCJISupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTWLanguageSupported()Z
    .locals 2

    const/16 v1, 0xe0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDefaultLDBFileNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDownloadLDBFileNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public printFileInfo()V
    .locals 2

    const-string v0, "DbFileInfo"

    const-string v1, "printf default databases"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDefaultLDBFileNameMap:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/ime/framework/dbmanager/DbFileInfo;->printFileInfo(Landroid/util/SparseArray;)V

    const-string v0, "DbFileInfo"

    const-string v1, "printf download databases"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDownloadLDBFileNameMap:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/ime/framework/dbmanager/DbFileInfo;->printFileInfo(Landroid/util/SparseArray;)V

    return-void
.end method

.method public setDBUpdateStatus(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDBFileUpdatedStatus:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDBFileUpdatedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    return-void
.end method

.method public setDbChangeNotify(Lcom/ime/framework/dbmanager/DbFileInfo$dbFileChangeNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mdbChangeNoti:Lcom/ime/framework/dbmanager/DbFileInfo$dbFileChangeNotifier;

    return-void
.end method

.method public updateDBInfo(ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDownloadLDBFileNameMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mDownloadLDBFileNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbFileInfo;->mdbChangeNoti:Lcom/ime/framework/dbmanager/DbFileInfo$dbFileChangeNotifier;

    invoke-interface {v0, v1, p1, p2}, Lcom/ime/framework/dbmanager/DbFileInfo$dbFileChangeNotifier;->ondbFileChange(IILjava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/ime/framework/dbmanager/DbFileInfo;->setDBUpdateStatus(IZ)V

    :cond_0
    return-void
.end method
