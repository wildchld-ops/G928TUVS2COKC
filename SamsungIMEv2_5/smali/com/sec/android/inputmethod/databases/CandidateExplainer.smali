.class public Lcom/sec/android/inputmethod/databases/CandidateExplainer;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CandidateExplainer.java"


# static fields
.field private static final CATEGORY_CODE_AUXILIARY:I = 0x4

.field private static final CATEGORY_CODE_CAPITAL_NUMBER:I = 0xb

.field private static final CATEGORY_CODE_CHEMICAL_ELEMENT:I = 0x6

.field private static final CATEGORY_CODE_CHINESE_CHAR_COMPONENT:I = 0xc

.field private static final CATEGORY_CODE_EMPTY:I = 0x0

.field private static final CATEGORY_CODE_FAMILY_NAME:I = 0x5

.field private static final CATEGORY_CODE_FISH:I = 0xd

.field private static final CATEGORY_CODE_INTERJECTION:I = 0x3

.field private static final CATEGORY_CODE_METAL_ELEMENT:I = 0xe

.field private static final CATEGORY_CODE_NORAML:I = 0x1

.field private static final CATEGORY_CODE_NUMBER:I = 0xa

.field private static final CATEGORY_CODE_ORGANIC_COMPOUNDS:I = 0x8

.field private static final CATEGORY_CODE_PLACE_NAME:I = 0x9

.field private static final CATEGORY_CODE_POLYPHONE:I = 0x2

.field private static final CATEGORY_CODE_TRADITIONAL:I = 0x7

.field private static final CATEGORY_NAME_AUXILIARY:Ljava/lang/String; = "\u52a9\u8bcd"

.field private static final CATEGORY_NAME_CAPITAL_NUMBER:Ljava/lang/String; = "\u5927\u5199\u6570\u5b57"

.field private static final CATEGORY_NAME_CHEMICAL_ELEMENT:Ljava/lang/String; = "\u5316\u5b66\u5143\u7d20"

.field private static final CATEGORY_NAME_CHINESE_CHAR_COMPONENT:Ljava/lang/String; = "\u4e2d\u6587\u90e8\u9996"

.field private static final CATEGORY_NAME_FAMILY_NAME:Ljava/lang/String; = "\u59d3"

.field private static final CATEGORY_NAME_FISH:Ljava/lang/String; = "\u9c7c"

.field private static final CATEGORY_NAME_INTERJECTION:Ljava/lang/String; = "\u53f9\u8bcd"

.field private static final CATEGORY_NAME_METAL_ELEMENT:Ljava/lang/String; = "\u91d1\u5c5e\u5143\u7d20"

.field private static final CATEGORY_NAME_NUMBER:Ljava/lang/String; = "\u6570\u5b57"

.field private static final CATEGORY_NAME_ORGANIC_COMPOUNDS:Ljava/lang/String; = "\u6709\u673a\u5316\u5408\u7269"

.field private static final CATEGORY_NAME_PLACE_NAME:Ljava/lang/String; = "\u5730\u540d"

.field private static final CATEGORY_NAME_TRADITIONAL:Ljava/lang/String; = "\u7e41\u4f53"

.field private static final CHINESE_CHAR_DE:C = '\u7684'

.field public static final COL_CATEGORY:Ljava/lang/String; = "category"

.field public static final COL_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COL_ID:Ljava/lang/String; = "_id"

.field public static final COL_PINYIN:Ljava/lang/String; = "pinyin"

.field public static final COL_WORD:Ljava/lang/String; = "word"

.field private static final COMMA:C = '\uff0c'

.field private static final DATABASE_NAME:Ljava/lang/String; = "sime_explain.db"

.field private static final DATABASE_VERSION:I = 0x3

.field private static final DEBUG:Z = false

.field private static final EMPTY_ITEM_CHAR:Ljava/lang/String; = "-"

.field private static final MINI_RECORDS_COUNT:I = 0x1388

.field private static final SEMICOLON:C = '\uff1b'

.field public static final TABLE_CHINESE_DICTIONARY:Ljava/lang/String; = "chinese_dictionary"

.field private static final TAG:Ljava/lang/String;

.field private static beenStarted:Z

.field private static lock:Ljava/lang/Object;

.field private static mExplainer:Lcom/sec/android/inputmethod/databases/CandidateExplainer;


# instance fields
.field private mIsBusy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/inputmethod/databases/CandidateExplainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->mExplainer:Lcom/sec/android/inputmethod/databases/CandidateExplainer;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->beenStarted:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "sime_explain.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->mIsBusy:Z

    return-void
.end method

.method private getCount()I
    .locals 11

    const/4 v8, -0x1

    const/4 v9, 0x0

    :try_start_0
    const-string v1, "chinese_dictionary"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v8

    :catch_0
    move-exception v10

    :try_start_1
    sget-object v0, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCount() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static getCreateWordListSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "word"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pinyin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDescription(C)Ljava/lang/String;
    .locals 14

    const/4 v11, 0x0

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "chinese_dictionary"

    const/4 v2, 0x0

    const-string v3, "word=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v13, 0x0

    const/4 v9, -0x1

    const/4 v12, 0x0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-le v13, v0, :cond_3

    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-lez v13, :cond_4

    const v0, 0xff0c

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    const-string v0, "category"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v0, "description"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v0, "pinyin"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    packed-switch v9, :pswitch_data_0

    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v13, v13, 0x1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :pswitch_0
    const-string v0, "-"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x7684

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_1
    const-string v0, "-"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x7684

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_2
    const-string v0, "\u53f9\u8bcd"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x7684

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_3
    const-string v0, "\u52a9\u8bcd"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x7684

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_4
    const-string v0, "\u59d3"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x7684

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_5
    const-string v0, "\u5316\u5b66\u5143\u7d20"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x7684

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_6
    const-string v0, "-"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x7684

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x7684

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "\u7e41\u4f53"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_7
    const-string v0, "\u6709\u673a\u5316\u5408\u7269"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v0, 0xff0c

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_8
    const-string v0, "-"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "\u5730\u540d"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v0, 0xff0c

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x7684

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_9
    const-string v0, "\u6570\u5b57"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x7684

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_a
    const-string v0, "\u5927\u5199\u6570\u5b57"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x7684

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_b
    const-string v0, "\u4e2d\u6587\u90e8\u9996"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v0, 0xff0c

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "\u9c7c"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x7684

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_d
    const-string v0, "\u91d1\u5c5e\u5143\u7d20"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v0, 0xff0c

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/inputmethod/databases/CandidateExplainer;
    .locals 3

    const-class v1, Lcom/sec/android/inputmethod/databases/CandidateExplainer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->mExplainer:Lcom/sec/android/inputmethod/databases/CandidateExplainer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/inputmethod/databases/CandidateExplainer;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->mExplainer:Lcom/sec/android/inputmethod/databases/CandidateExplainer;

    :cond_0
    sget-object v0, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->mExplainer:Lcom/sec/android/inputmethod/databases/CandidateExplainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private startDbInflater(Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_1

    sget-object v1, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runDbInflater() context is null. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/inputmethod/databases/CandidateExplainerDbInflater;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public getDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    const v3, 0xff1b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    aget-char v3, v1, v2

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->getDescription(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public inflateDB(Landroid/content/Context;)V
    .locals 2

    sget-object v1, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->beenStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->beenStarted:Z

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->startDbInflater(Landroid/content/Context;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAvailable()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->mIsBusy:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->getCount()I

    move-result v1

    const/16 v2, 0x1388

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->mIsBusy:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "chinese_dictionary"

    invoke-static {v0}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->getCreateWordListSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS chinese_dictionary"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method setBusyStatus(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->mIsBusy:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->mIsBusy:Z

    :cond_0
    return-void
.end method
