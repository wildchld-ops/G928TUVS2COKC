.class public Lcom/ime/implement/setting/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_SAMSUNGIME_LIFE_CIRCLE:Ljava/lang/String; = "com.sec.android.inputmethod.lifecircle"

.field public static final ACTION_WLAN_ONLY:Ljava/lang/String; = "com.sec.android.inputmethod.setting.dbmanager.WLAN_ONLY_STATUS"

.field public static final ACTIVITY_FRIENDS:I = 0x2

.field public static final ACTIVITY_LATEST_TWEETS:I = 0x7

.field public static final ACTIVITY_LOGIN:I = 0x4

.field public static final ACTIVITY_MENU_SCREEN:I = 0x6

.field public static final ACTIVITY_PROFILE:I = 0x1

.field public static final ACTIVITY_REFRESH:I = 0x5

.field public static final ACTIVITY_REPLIES:I = 0x3

.field public static final CDBUPDATE_SCH_ONLY:Z = true

.field public static final CONSUMER_KEY:Ljava/lang/String; = "1vEcCWfKYbRunaPsbZQAGg"

.field public static final CONSUMER_SECRET:Ljava/lang/String; = "rWg78eWPPBIYqZWugQUME7XBnuHCun4wWQBMRpC5M"

.field public static final CONTEXT_PROFILE:I = 0x1

.field public static final CONTEXT_REPLY:I = 0x3

.field public static final CONTEXT_RETWEET:I = 0x4

.field public static final CONTEXT_TWEETS:I = 0x2

.field public static final EXTRA_LIFECIRCLE_INFO:Ljava/lang/String; = "lifecircleinfo"

.field public static final HOVER_SIZE:I = 0x28

.field public static final LANGUAGE_SIMPLIFY_CHN:Ljava/lang/String; = "zh_CN"

.field public static final LANGUAGE_TRADITIONAL_HK:Ljava/lang/String; = "zh_HK"

.field public static final LANGUAGE_TRADITIONAL_TW:Ljava/lang/String; = "zh_TW"

.field public static final LONG_PRESS_TIMEOUT1:I = 0x1f4

.field public static final PREFS_NAME:Ljava/lang/String; = "TwitterLogin"

.field public static final SAMSUNGIME_CREATE:Ljava/lang/String; = "onCreate"

.field public static final SAMSUNGIME_DESTROY:Ljava/lang/String; = "onDestroy"

.field public static final SELECTION_CONTROL_REPEAT_SPEED:I = 0x32

.field public static final SENSITIVE_WORDS:[Ljava/lang/String;

.field public static final SOGOU_HOTWORDUPDATE_SUPPORT:Z = false

.field public static final WLAN_ONLY_STATUS:Ljava/lang/String; = "wlan.only.status"

.field public static final XT9_DBUPDATE_SUPPORT:Z = true

.field public static mLongEmotionsStr:[Ljava/lang/String;

.field public static mSettingSymHistoryDefaultVal:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u53f0\u72ec"

    aput-object v1, v0, v3

    const-string v1, "\u53f0\u6e7e\u72ec\u7acb"

    aput-object v1, v0, v4

    const-string v1, "\u897f\u85cf\u72ec\u7acb"

    aput-object v1, v0, v5

    const-string v1, "\u65b0\u7586\u72ec\u7acb"

    aput-object v1, v0, v6

    const-string v1, "\u6cd5\u8f6e\u529f"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u5929\u5b89\u95e8\u4e8b\u4ef6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e2d\u5357\u6d77\u4e8b\u4ef6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u9648\u6c34\u6241"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u5c0f\u6cc9\u7eaf\u4e00\u90ce"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u9756\u56fd\u795e\u793e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ime/implement/setting/Constants;->SENSITIVE_WORDS:[Ljava/lang/String;

    const/16 v0, 0x33

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u2192_\u2192"

    aput-object v1, v0, v3

    const-string v1, "\u256e(\u256f_\u2570)\u256d"

    aput-object v1, v0, v4

    const-string v1, "O(\u2229_\u2229)O"

    aput-object v1, v0, v5

    const-string v1, "TAT"

    aput-object v1, v0, v6

    const-string v1, "(\u2267\u2207\u2266)"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "(\u22673\u2266)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "^_^"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "(^_-)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "*^O^*"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\uff1d0\uff1d"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "=\u76bf="

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "-_-#"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "(>\ufe4f<)"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "(\u256f\u0437\u2570)"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "(\uffe3\u2207\uffe3)"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Orz"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\uff3c(^o^)\uff0f"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "(^_^;)"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "@_@"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u2299_\u2299"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T_T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "( \u00b4\u25bd` )\uff89"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Y(\uff3e_\uff3e)Y"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "(-_-) zzz"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u2190_\u2190"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u256e(\u256f\u25bd\u2570)\u256d"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u30fd(`\u0414\u00b4)\uff89"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "(\uffe3\u0414\uffe3)\uff89"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "ToT"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "(>_<)"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u56e7rz"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "(^(\u30a8)^)"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "(=^\uff65\uff6a\uff65^=)"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "(=^\uff65^=)"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u2514(=^\u2025^=)\u2510"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u222a\uff65\u03c9\uff65\u222a"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "(\uffe3\u25bd\uffe3)\u30ce"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "L(^o^)\u300d"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "=3="

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "(^\u03c9^)"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "(^ \u0437^)"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "~>_<~"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "-_-b"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "(\ufe36\ufe39\ufe3a)"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "(\u2312\u2207\u2312)"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "o_O"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "(\u00ac_\u00ac)\uff89"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "^(oo)^"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "o(>\ufe4f<)o"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "m(._.)m"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "= =|||"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ime/implement/setting/Constants;->mLongEmotionsStr:[Ljava/lang/String;

    const/16 v0, 0x36

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\uff0c"

    aput-object v1, v0, v3

    const-string v1, "\u3002"

    aput-object v1, v0, v4

    const-string v1, "\uff1f"

    aput-object v1, v0, v5

    const-string v1, "\uff01"

    aput-object v1, v0, v6

    const-string v1, "\u3001"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u2026\u2026"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "@"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\uff1a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\uff1b"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\uff06"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u201c \u201d"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u201c"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u201d"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\uff08\uff09"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\uff08"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\uff09"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "#"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u00b7"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u00a5"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "$"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u20a9"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u00a3"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u20ac"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u203b"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u00d7"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u00f7"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u00b0"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u300a\u300b"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u300a"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u300b"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\uff5b\uff5d"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\uff5b"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\uff5d"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\u3010\u3011"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\u3010"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\u3011"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\uff1c\uff1e"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\uff1c"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\uff1e"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\u300c\u300d"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\u300c"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\u300d"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\u2018 \u2019"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\u2018"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\u2019"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ime/implement/setting/Constants;->mSettingSymHistoryDefaultVal:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSensitiveWords(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/ime/implement/setting/Constants;->SENSITIVE_WORDS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/ime/implement/setting/Constants;->SENSITIVE_WORDS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
