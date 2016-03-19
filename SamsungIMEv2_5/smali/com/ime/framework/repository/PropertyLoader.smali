.class public final Lcom/ime/framework/repository/PropertyLoader;
.super Ljava/lang/Object;
.source "PropertyLoader.java"


# static fields
.field private static final ATT_COUNT:I = 0x3

.field private static final ATT_KEY:Ljava/lang/String; = "KEY"

.field private static final ATT_TYPE:Ljava/lang/String; = "TYPE"

.field private static final ATT_VALUE:Ljava/lang/String; = "VALUE"

.field public static final HEADER_SETTINGS_DEFAULT_VALUES:Ljava/lang/String; = "SETTINGS_DEFAULT_"

.field private static final INDEX_ATT_KEY:I = 0x0

.field private static final INDEX_ATT_TYPE:I = 0x2

.field private static final INDEX_ATT_VALUE:I = 0x1

.field private static final TAG_LOG_DEBUG:Ljava/lang/String; = "LOG_DEBUG"

.field private static final TAG_LOG_ERROR:Ljava/lang/String; = "LOG_ERROR"

.field private static final TAG_LOG_INFO:Ljava/lang/String; = "LOG_INFO"

.field private static final TAG_PROPERTIES:Ljava/lang/String; = "PROPERTIES"

.field private static final TAG_PROPERTY:Ljava/lang/String; = "PROPERTY"

.field private static mInputManager:Lcom/ime/framework/common/InputManager;

.field private static mIsChnMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    sput-object v0, Lcom/ime/framework/repository/PropertyLoader;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/inputmethod/ConfigFeature;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/ConfigFeature;-><init>()V

    const-string v1, "CHINA"

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/ConfigFeature;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/ime/framework/repository/PropertyLoader;->mIsChnMode:Z

    return-void
.end method

.method private isTabletMode()Z
    .locals 3

    const-string v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method private makeSelectLanguagePrefKey(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select_language_list_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseAttribute(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-ne v4, v5, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    if-eq v4, v5, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    return v2

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "KEY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string v4, "VALUE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v2

    goto :goto_1

    :cond_5
    const-string v4, "TYPE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p2, v4

    goto :goto_1
.end method

.method private parseXml(Landroid/content/res/XmlResourceParser;Landroid/content/Context;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v13, 0x0

    const-string v11, ""

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Sip_ConfigAutoCorrection"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v2, Lcom/sec/android/inputmethod/ConfigFeature;

    invoke-direct {v2}, Lcom/sec/android/inputmethod/ConfigFeature;-><init>()V

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/ConfigFeature;->getRegion()Ljava/lang/String;

    move-result-object v11

    :goto_0
    const/4 v15, 0x1

    if-eq v5, v15, :cond_13

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    goto :goto_0

    :pswitch_0
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "PROPERTIES"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "PROPERTY"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v15, 0x3

    new-array v10, v15, [Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/ime/framework/repository/PropertyLoader;->parseAttribute(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v15, 0x0

    aget-object v15, v10, v15

    const-string v16, "KOR_MODE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x2

    aget-object v15, v10, v15

    const-string v16, "bool"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    aget-object v15, v10, v15

    const-string v16, "true"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v7, 0x1

    :cond_1
    const/4 v15, 0x0

    aget-object v15, v10, v15

    const-string v16, "SETTINGS_DEFAULT_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_0

    const/4 v15, 0x2

    aget-object v15, v10, v15

    const-string v16, "string"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v15, 0x0

    aget-object v15, v10, v15

    const/16 v16, 0x1

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v7, :cond_3

    const/4 v15, 0x0

    aget-object v15, v10, v15

    const-string v16, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/high16 v15, 0x6b6f0000

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/ime/framework/repository/PropertyLoader;->makeSelectLanguagePrefKey(I)Ljava/lang/String;

    move-result-object v8

    const/4 v15, 0x1

    aget-object v15, v10, v15

    invoke-interface {v4, v8, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    :goto_2
    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_3
    sget-boolean v15, Lcom/ime/framework/repository/PropertyLoader;->mIsChnMode:Z

    if-eqz v15, :cond_2

    const/4 v15, 0x0

    aget-object v15, v10, v15

    const-string v16, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const v15, 0x7a68434e

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/ime/framework/repository/PropertyLoader;->makeSelectLanguagePrefKey(I)Ljava/lang/String;

    move-result-object v8

    const/4 v15, 0x1

    aget-object v15, v10, v15

    invoke-interface {v4, v8, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_4
    const/4 v15, 0x2

    aget-object v15, v10, v15

    const-string v16, "int"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x0

    aget-object v15, v10, v15

    const/16 v16, 0x1

    aget-object v16, v10, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v4, v15, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v15, 0x2

    aget-object v15, v10, v15

    const-string v16, "bool"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const-string v15, "USA"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v15, "ENABLE_TRACE_POPUP_GUIDE"

    const/16 v16, 0x0

    aget-object v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "SETTINGS_DEFAULT_AUTO_PERIOD"

    const/16 v16, 0x0

    aget-object v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "SETTINGS_DEFAULT_TRACE"

    const/16 v16, 0x0

    aget-object v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_6
    const/4 v15, 0x0

    aget-object v15, v10, v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v4, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_3
    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_7
    const-string v15, "OFF"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const-string v15, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/16 v16, 0x0

    aget-object v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v15, 0x0

    aget-object v15, v10, v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v4, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_8
    const/4 v15, 0x0

    aget-object v15, v10, v15

    const/16 v16, 0x1

    aget-object v16, v10, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    invoke-interface {v4, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_9
    const/4 v15, 0x2

    aget-object v15, v10, v15

    const-string v16, "short"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v15, 0x0

    aget-object v15, v10, v15

    const/16 v16, 0x1

    aget-object v16, v10, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v4, v15, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v15, 0x2

    aget-object v15, v10, v15

    const-string v16, "float"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v15, 0x0

    aget-object v15, v10, v15

    const/16 v16, 0x1

    aget-object v16, v10, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    move/from16 v0, v16

    invoke-interface {v4, v15, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_b
    const-string v15, "SamsungIME"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    aget-object v17, v10, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v17, v10, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    const-string v15, "LOG_INFO"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    const/4 v15, 0x0

    const-string v16, "value"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "true"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/4 v15, 0x1

    sput-boolean v15, Lcom/ime/framework/util/Debug;->INFO:Z

    goto/16 :goto_1

    :cond_d
    const/4 v15, 0x0

    sput-boolean v15, Lcom/ime/framework/util/Debug;->INFO:Z

    goto/16 :goto_1

    :cond_e
    const-string v15, "LOG_DEBUG"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    const/4 v15, 0x0

    const-string v16, "value"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "true"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    const/4 v15, 0x1

    sput-boolean v15, Lcom/ime/framework/util/Debug;->DEBUG:Z

    goto/16 :goto_1

    :cond_f
    const/4 v15, 0x0

    sput-boolean v15, Lcom/ime/framework/util/Debug;->DEBUG:Z

    goto/16 :goto_1

    :cond_10
    const-string v15, "LOG_ERROR"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    const/4 v15, 0x0

    const-string v16, "value"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "true"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/4 v15, 0x1

    sput-boolean v15, Lcom/ime/framework/util/Debug;->ERROR:Z

    goto/16 :goto_1

    :cond_11
    const/4 v15, 0x0

    sput-boolean v15, Lcom/ime/framework/util/Debug;->ERROR:Z

    goto/16 :goto_1

    :cond_12
    const/4 v15, 0x0

    :goto_4
    return v15

    :cond_13
    if-eqz v6, :cond_14

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_14
    const/4 v15, 0x1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private parseXml(Landroid/content/res/XmlResourceParser;Lcom/ime/framework/repository/Repository;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v6, 0x0

    const-string v4, ""

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_ConfigAutoCorrection"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/sec/android/inputmethod/ConfigFeature;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/ConfigFeature;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/ConfigFeature;->getRegion()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/4 v8, 0x1

    if-eq v2, v8, :cond_11

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "PROPERTIES"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "PROPERTY"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x3

    new-array v3, v8, [Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/ime/framework/repository/PropertyLoader;->parseAttribute(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v8, 0x2

    aget-object v8, v3, v8

    const-string v9, "string"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    aget-object v8, v3, v8

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-interface {p2, v8, v9}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v8, 0x2

    aget-object v8, v3, v8

    const-string v9, "int"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    aget-object v8, v3, v8

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {p2, v8, v9}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/4 v8, 0x2

    aget-object v8, v3, v8

    const-string v9, "bool"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "USA"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "ENABLE_TRACE_POPUP_GUIDE"

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "SETTINGS_DEFAULT_AUTO_PERIOD"

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "SETTINGS_DEFAULT_TRACE"

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    const/4 v8, 0x0

    aget-object v8, v3, v8

    const/4 v9, 0x1

    invoke-interface {p2, v8, v9}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_4
    const-string v8, "OFF"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    aget-object v8, v3, v8

    const/4 v9, 0x0

    invoke-interface {p2, v8, v9}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_5
    const/4 v8, 0x0

    aget-object v8, v3, v8

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-interface {p2, v8, v9}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_6
    const/4 v8, 0x2

    aget-object v8, v3, v8

    const-string v9, "short"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    aget-object v8, v3, v8

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->shortValue()S

    move-result v9

    invoke-interface {p2, v8, v9}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;S)V

    goto/16 :goto_1

    :cond_7
    const/4 v8, 0x2

    aget-object v8, v3, v8

    const-string v9, "float"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    aget-object v8, v3, v8

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-interface {p2, v8, v9}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;F)V

    goto/16 :goto_1

    :cond_8
    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    const-string v8, "LOG_INFO"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    const-string v9, "value"

    invoke-interface {p1, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    sput-boolean v8, Lcom/ime/framework/util/Debug;->INFO:Z

    goto/16 :goto_1

    :cond_a
    const/4 v8, 0x0

    sput-boolean v8, Lcom/ime/framework/util/Debug;->INFO:Z

    goto/16 :goto_1

    :cond_b
    const-string v8, "LOG_DEBUG"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x0

    const-string v9, "value"

    invoke-interface {p1, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    sput-boolean v8, Lcom/ime/framework/util/Debug;->DEBUG:Z

    goto/16 :goto_1

    :cond_c
    sget-boolean v8, Lcom/ime/framework/util/Debug;->ENG_MODE:Z

    if-eqz v8, :cond_d

    const/4 v8, 0x1

    sput-boolean v8, Lcom/ime/framework/util/Debug;->DEBUG:Z

    goto/16 :goto_1

    :cond_d
    const/4 v8, 0x0

    sput-boolean v8, Lcom/ime/framework/util/Debug;->DEBUG:Z

    goto/16 :goto_1

    :cond_e
    const-string v8, "LOG_ERROR"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const/4 v8, 0x0

    const-string v9, "value"

    invoke-interface {p1, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x1

    sput-boolean v8, Lcom/ime/framework/util/Debug;->ERROR:Z

    goto/16 :goto_1

    :cond_f
    const/4 v8, 0x0

    sput-boolean v8, Lcom/ime/framework/util/Debug;->ERROR:Z

    goto/16 :goto_1

    :cond_10
    const/4 v8, 0x0

    :goto_2
    return v8

    :cond_11
    const/4 v8, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public load(Lcom/ime/framework/repository/Repository;Landroid/content/res/Resources;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/ime/framework/repository/PropertyLoader;->isTabletMode()Z

    move-result v1

    if-nez v3, :cond_0

    new-instance v4, Lcom/ime/framework/util/PropertyXmlLoaderManager;

    invoke-direct {v4}, Lcom/ime/framework/util/PropertyXmlLoaderManager;-><init>()V

    invoke-virtual {v4}, Lcom/ime/framework/util/PropertyXmlLoaderManager;->createXmlLoader()Lcom/ime/framework/util/AbstractPropertyXmlLoader;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return v5

    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_1

    invoke-virtual {v3}, Lcom/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParser()Landroid/content/res/XmlResourceParser;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    :try_start_0
    invoke-direct {p0, v2, p1}, Lcom/ime/framework/repository/PropertyLoader;->parseXml(Landroid/content/res/XmlResourceParser;Lcom/ime/framework/repository/Repository;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error! (Invalid tag)"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v3, p2}, Lcom/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParser(Landroid/content/res/Resources;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v6, "SamsungIME"

    const-string v7, "Could not find porperty file!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v3}, Lcom/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParserTablet()Landroid/content/res/XmlResourceParser;

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/ime/framework/repository/PropertyLoader;->parseXml(Landroid/content/res/XmlResourceParser;Lcom/ime/framework/repository/Repository;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error! (Invalid tag)"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v6, "SamsungIME"

    const-string v7, "Could not find porperty file!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    const-string v6, "KOREA"

    const-string v7, "ro.csc.country_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v1, :cond_6

    invoke-virtual {v3}, Lcom/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParserTabletKor()Landroid/content/res/XmlResourceParser;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_7

    :try_start_2
    invoke-direct {p0, v2, p1}, Lcom/ime/framework/repository/PropertyLoader;->parseXml(Landroid/content/res/XmlResourceParser;Lcom/ime/framework/repository/Repository;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error! (Invalid tag)"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v3}, Lcom/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParserKor()Landroid/content/res/XmlResourceParser;

    move-result-object v2

    goto :goto_2

    :catch_5
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string v6, "SamsungIME"

    const-string v7, "Could not find porperty file!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    sget-boolean v6, Lcom/ime/framework/repository/PropertyLoader;->mIsChnMode:Z

    if-eqz v6, :cond_b

    if-eqz v1, :cond_9

    invoke-virtual {v3}, Lcom/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParserTabletChn()Landroid/content/res/XmlResourceParser;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_a

    :try_start_3
    invoke-direct {p0, v2, p1}, Lcom/ime/framework/repository/PropertyLoader;->parseXml(Landroid/content/res/XmlResourceParser;Lcom/ime/framework/repository/Repository;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error! (Invalid tag)"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v3}, Lcom/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParserChn()Landroid/content/res/XmlResourceParser;

    move-result-object v2

    goto :goto_3

    :catch_7
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const-string v6, "SamsungIME"

    const-string v7, "Could not find porperty file!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public loadAndSetToPreference(Landroid/content/Context;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/ime/framework/repository/PropertyLoader;->isTabletMode()Z

    move-result v1

    if-nez v3, :cond_0

    new-instance v4, Lcom/ime/framework/util/PropertyXmlLoaderManager;

    invoke-direct {v4}, Lcom/ime/framework/util/PropertyXmlLoaderManager;-><init>()V

    invoke-virtual {v4}, Lcom/ime/framework/util/PropertyXmlLoaderManager;->createXmlLoader()Lcom/ime/framework/util/AbstractPropertyXmlLoader;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-virtual {v3}, Lcom/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParser()Landroid/content/res/XmlResourceParser;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-direct {p0, v2, p1}, Lcom/ime/framework/repository/PropertyLoader;->parseXml(Landroid/content/res/XmlResourceParser;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error! (Invalid tag)"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v6, "SamsungIME"

    const-string v7, "Could not find porperty file!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lcom/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParserTablet()Landroid/content/res/XmlResourceParser;

    move-result-object v2

    if-eqz v2, :cond_3

    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/ime/framework/repository/PropertyLoader;->parseXml(Landroid/content/res/XmlResourceParser;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error! (Invalid tag)"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v6, "SamsungIME"

    const-string v7, "Could not find porperty file!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    const-string v6, "KOREA"

    const-string v7, "ro.csc.country_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v1, :cond_5

    invoke-virtual {v3}, Lcom/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParserTabletKor()Landroid/content/res/XmlResourceParser;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_6

    :try_start_2
    invoke-direct {p0, v2, p1}, Lcom/ime/framework/repository/PropertyLoader;->parseXml(Landroid/content/res/XmlResourceParser;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error! (Invalid tag)"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v3}, Lcom/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParserKor()Landroid/content/res/XmlResourceParser;

    move-result-object v2

    goto :goto_1

    :catch_5
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v6, "SamsungIME"

    const-string v7, "Could not find porperty file!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    sget-boolean v6, Lcom/ime/framework/repository/PropertyLoader;->mIsChnMode:Z

    if-eqz v6, :cond_a

    if-eqz v1, :cond_8

    invoke-virtual {v3}, Lcom/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParserTablet()Landroid/content/res/XmlResourceParser;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_9

    :try_start_3
    invoke-direct {p0, v2, p1}, Lcom/ime/framework/repository/PropertyLoader;->parseXml(Landroid/content/res/XmlResourceParser;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error! (Invalid tag)"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v3}, Lcom/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParserChn()Landroid/content/res/XmlResourceParser;

    move-result-object v2

    goto :goto_2

    :catch_7
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "Porperty file parssing error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string v6, "SamsungIME"

    const-string v7, "Could not find porperty file!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const/4 v5, 0x1

    goto/16 :goto_0
.end method
