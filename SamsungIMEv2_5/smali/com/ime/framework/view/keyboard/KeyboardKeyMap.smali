.class public Lcom/ime/framework/view/keyboard/KeyboardKeyMap;
.super Ljava/lang/Object;
.source "KeyboardKeyMap.java"


# static fields
.field private static final ANGUAGES_MOBILE_KEYBOARD_LABELS:[I

.field private static final AVAILABLE_LANGUAGES_CODES:[I

.field private static final AVAILABLE_LANGUAGES_LABELS:[I

.field private static final AVAILABLE_LANGUAGES_MOBILE_KEYBOARD_CODES:[I

.field private static final AVAILABLE_LANGUAGES_MOBILE_KEYBOARD_NUMBER_CODES:[I

.field private static final AVAILABLE_LANGUAGES_MOBILE_KEYBOARD_SYMBOL_CODES:[I

.field private static final AVAILABLE_LANGUAGES_PHONEPAD_CODES_NORMAL:[I

.field private static final AVAILABLE_LANGUAGES_PHONEPAD_LABELS_NORMAL:[I

.field private static final AVAILABLE_LANGUAGES_PHONEPAD_SYMBOLS_CODES:[I

.field private static final AVAILABLE_LANGUAGES_SYMBOLS_CODES:[I

.field private static final AVAILABLE_LANGUAGES_SYMBOLS_LABELS:[I

.field private static GAP:I

.field private static GAP_QWERTY_SYMBOLS:I

.field private static final LANGUAGES_MOBILE_KEYBOARD_NUMBER_LABELS:[I

.field private static final LANGUAGES_MOBILE_KEYBOARD_SYMBOL_LABELS:[I

.field private static final LANGUAGES_PHONEPAD_SYMBOLS_LABELS:[I

.field private static mInputManager:Lcom/ime/framework/common/InputManager;

.field private static sInstance:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;


# instance fields
.field private final MOBILE_KEYBOARD_ADDKEY_INDEX:I

.field private mDefaultLanguage:I

.field private mIsKorMode:Z

.field private mIsNumberRowDisable:Z

.field private mLanguageCodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageId:I

.field private mLanguageLabels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageMobileKeyboardCodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageMobileKeyboardLabels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageMobileKeyboardNumberCodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageMobileKeyboardNumberLabels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageMobileKeyboardSymbolCodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageMobileKeyboardSymbolLabels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguagePhonepadCodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguagePhonepadLabels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguagePhonepadSymbolsCodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguagePhonepadSymbolsLabels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageSymbolsCodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageSymbolsLabels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mRange:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x16

    const/4 v4, 0x6

    const/high16 v3, 0x656e0000

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x3c

    sput v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->GAP:I

    const/16 v0, 0x5a

    sput v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->GAP_QWERTY_SYMBOLS:I

    const/16 v0, 0x38

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_CODES:[I

    const/16 v0, 0x38

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_LABELS:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_SYMBOLS_CODES:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_SYMBOLS_LABELS:[I

    const/16 v0, 0x31

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_PHONEPAD_CODES_NORMAL:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_PHONEPAD_LABELS_NORMAL:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_PHONEPAD_SYMBOLS_CODES:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->LANGUAGES_PHONEPAD_SYMBOLS_LABELS:[I

    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_MOBILE_KEYBOARD_CODES:[I

    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->ANGUAGES_MOBILE_KEYBOARD_LABELS:[I

    new-array v0, v2, [I

    aput v3, v0, v1

    sput-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_MOBILE_KEYBOARD_NUMBER_CODES:[I

    new-array v0, v2, [I

    aput v3, v0, v1

    sput-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->LANGUAGES_MOBILE_KEYBOARD_NUMBER_LABELS:[I

    new-array v0, v2, [I

    aput v3, v0, v1

    sput-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_MOBILE_KEYBOARD_SYMBOL_CODES:[I

    new-array v0, v2, [I

    aput v3, v0, v1

    sput-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->LANGUAGES_MOBILE_KEYBOARD_SYMBOL_LABELS:[I

    return-void

    :array_0
    .array-data 4
        0x656e0000
        0x6b6f0000
        0x65730000
        0x65740000
        0x64610000
        0x64650000
        0x64654445
        0x6d6b0000
        0x756b0000
        0x6b6d0000
        0x6b6b0000
        0x62670000
        0x6b790000
        0x74680000
        0x72750000
        0x6d6e0000
        0x74670000
        0x746b0000
        0x74720000
        0x61720000
        0x617a0000
        0x6e620000
        0x656c0000
        0x69770000
        0x68790000
        0x73710000
        0x66690000
        0x66724652
        0x69730000
        0x6c740000    # 1.1799116E27f
        0x6c760000
        0x6b610000
        0x75720000
        0x66610000
        0x757a0000
        0x68690000
        0x6d720000
        0x6b6e0000
        0x626e0000
        0x61730000
        0x74610000
        0x74650000
        0x73690000
        0x6f720000
        0x6d6c0000
        0x67750000
        0x7a680000
        0x7a68484b
        0x6a610000
        0x76690000
        0x6c6f0000
        0x6e650000
        0x62650000
        0x7a314d4d
        0x6d794d4d
        0x736c0000
    .end array-data

    :array_1
    .array-data 4
        0x656e0000
        0x6b6f0000
        0x65730000
        0x65740000
        0x64610000
        0x64650000
        0x64654445
        0x6d6b0000
        0x756b0000
        0x6b6d0000
        0x6b6b0000
        0x62670000
        0x6b790000
        0x74680000
        0x72750000
        0x6d6e0000
        0x74670000
        0x746b0000
        0x74720000
        0x61720000
        0x617a0000
        0x6e620000
        0x656c0000
        0x69770000
        0x68790000
        0x73710000
        0x66690000
        0x66724652
        0x69730000
        0x6c740000    # 1.1799116E27f
        0x6c760000
        0x6b610000
        0x75720000
        0x66610000
        0x757a0000
        0x68690000
        0x6d720000
        0x6b6e0000
        0x626e0000
        0x61730000
        0x74610000
        0x74650000
        0x73690000
        0x6f720000
        0x6d6c0000
        0x67750000
        0x7a680000
        0x7a68484b
        0x6a610000
        0x76690000
        0x6c6f0000
        0x6e650000
        0x62650000
        0x7a314d4d
        0x6d794d4d
        0x736c0000
    .end array-data

    :array_2
    .array-data 4
        0x656e0000
        0x68690000
        0x6e650000
        0x61720000
        0x6b6d0000
        0x6c6f0000
        0x74680000
        0x68650000
        -0x36290000    # -1761280.0f
        0x65730000
        -0x1a920000
        -0x2a920000
        0x7a314d4d
        0x6d794d4d
        0x61660000
        0x74670000
        0x72750000
        0x656c0000
        0x68790000
        0x6a610000
        0x6d6e0000
        0x7a680000
    .end array-data

    :array_3
    .array-data 4
        0x656e0000
        0x68690000
        0x6e650000
        0x61720000
        0x6b6d0000
        0x6c6f0000
        0x74680000
        0x68650000
        -0x36290000    # -1761280.0f
        0x65730000
        -0x1a920000
        -0x2a920000
        0x7a314d4d
        0x6d794d4d
        0x61660000
        0x74670000
        0x72750000
        0x656c0000
        0x68790000
        0x6a610000
        0x6d6e0000
        0x7a680000
    .end array-data

    :array_4
    .array-data 4
        0x656e0000
        0x61720000
        0x617a0000
        0x62670000
        0x72750000
        0x6d6e0000
        0x63610000
        0x63730000
        0x64610000
        0x64650000
        0x656c0000
        0x65730000
        0x65740000
        0x65750000
        0x66610000
        0x66690000
        0x73760000
        0x66720000
        0x676c0000
        0x69770000
        0x68720000
        0x68750000
        0x68790000
        0x69730000
        0x69740000
        0x6b610000
        0x6b6b0000
        0x6c740000    # 1.1799116E27f
        0x6c760000
        0x6e620000
        0x6e6c0000
        0x706c0000
        0x70740000
        0x726f0000
        0x736b0000
        0x736c0000
        0x746b0000
        0x74720000
        0x756b0000
        0x757a0000
        0x75720000
        0x76690000
        0x6d6b0000
        0x74680000
        0x62650000
        0x73710000
        0x61660000
        0x67610000
        0x737a0000
    .end array-data

    :array_5
    .array-data 4
        0x656e0000
        0x61720000
        0x62670000
        0x72750000
        0x6d6e0000
        0x6b6b0000
        0x656c0000
        0x66610000
        0x69770000
        0x68790000
        0x6b610000
        0x757a0000
        0x756b0000
        0x75720000
        0x6d6b0000
        0x74680000
        0x62650000
    .end array-data

    :array_6
    .array-data 4
        0x656e0000
        0x6b6d0000
        0x61720000
        0x6c6f0000
        0x68650000
        0x66610000
    .end array-data

    :array_7
    .array-data 4
        0x656e0000
        0x6b6d0000
        0x61720000
        0x6c6f0000
        0x68650000
        0x66610000
    .end array-data

    :array_8
    .array-data 4
        0x656e0000
        0x6b6f0000
        0x6b610000
        0x74720000
        0x73710000
        0x617a0000
        0x64610000
        0x76690000
        0x65740000
        0x66690000
        0x66720000
        0x64650000
        0x69730000
        0x6c760000
        0x6c740000    # 1.1799116E27f
        0x6e620000
        0x736c0000
        0x65730000
        0x746b0000
        0x66724652
        0x61720000
        0x72750000
        0x617a0000
    .end array-data

    :array_9
    .array-data 4
        0x656e0000
        0x6b6f0000
        0x6b610000
        0x74720000
        0x73710000
        0x617a0000
        0x64610000
        0x76690000
        0x65740000
        0x66690000
        0x66720000
        0x64650000
        0x69730000
        0x6c760000
        0x6c740000    # 1.1799116E27f
        0x6e620000
        0x736c0000
        0x65730000
        0x746b0000
        0x66724652
        0x61720000
        0x72750000
        0x6e620000
        0x64610000
        0x66690000
        0x65740000
        0x6c740000    # 1.1799116E27f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1a

    iput v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->MOBILE_KEYBOARD_ADDKEY_INDEX:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageCodes:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageLabels:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageSymbolsCodes:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageSymbolsLabels:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguagePhonepadCodes:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguagePhonepadLabels:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguagePhonepadSymbolsCodes:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguagePhonepadSymbolsLabels:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardCodes:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardLabels:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardNumberCodes:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardNumberLabels:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardSymbolCodes:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardSymbolLabels:Landroid/util/SparseArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mDefaultLanguage:I

    return-void
.end method

.method private fillCodesArray(Landroid/util/SparseArray;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v0, 0x0

    sget-object v1, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p2, v0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillMobileKeyboardSymbolCodesArray(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "SamsungIME_MKDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fillCodesArray():languageCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", codes.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_1
    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    if-ne v1, v3, :cond_2

    invoke-direct {p0, p2, v0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillMobileKeyboardNumberCodesArray(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillMobileKeyboardCodesArray(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mMode:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    if-nez v1, :cond_4

    invoke-direct {p0, p2, v0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillPhonepadNormalCodesArray(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2, v0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillPhonepadSymbolCodesArray(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    if-nez v1, :cond_6

    invoke-direct {p0, p2, v0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillQwertyNormalCodesArray(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-direct {p0, p2, v0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillQwertySymbolCodesArray(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private fillLabelsArray(Landroid/util/SparseArray;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v0, 0x0

    sget-object v1, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p2, v0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillMobileKeyboardSymbolLabelsArray(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    if-ne v1, v3, :cond_1

    invoke-direct {p0, p2, v0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillMobileKeyboardNumberLabelsArray(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillMobileKeyboardLabelsArrays(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mMode:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    if-nez v1, :cond_3

    invoke-direct {p0, p2, v0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillPhonepadNormalLabelsArray(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, v0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillPhonepadSymbolLabelsArray(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    if-nez v1, :cond_5

    invoke-direct {p0, p2, v0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillQwertyNormalLabelsArray(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-direct {p0, p2, v0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillQwertySymbolLabelsArray(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private fillMobileKeyboardCodesArray(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x1a

    const/4 v4, 0x0

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    const/16 v2, 0x1b

    new-array p2, v2, [Ljava/lang/String;

    aput-object v4, p2, v3

    aput-object v4, p2, v6

    aput-object v4, p2, v7

    const/4 v2, 0x3

    aput-object v4, p2, v2

    const/4 v2, 0x4

    aput-object v4, p2, v2

    const/4 v2, 0x5

    aput-object v4, p2, v2

    const/4 v2, 0x6

    aput-object v4, p2, v2

    const/4 v2, 0x7

    aput-object v4, p2, v2

    const/16 v2, 0x8

    aput-object v4, p2, v2

    const/16 v2, 0x9

    aput-object v4, p2, v2

    const/16 v2, 0xa

    aput-object v4, p2, v2

    const/16 v2, 0xb

    aput-object v4, p2, v2

    const/16 v2, 0xc

    aput-object v4, p2, v2

    const/16 v2, 0xd

    aput-object v4, p2, v2

    const/16 v2, 0xe

    aput-object v4, p2, v2

    const/16 v2, 0xf

    aput-object v4, p2, v2

    const/16 v2, 0x10

    aput-object v4, p2, v2

    const/16 v2, 0x11

    aput-object v4, p2, v2

    const/16 v2, 0x12

    aput-object v4, p2, v2

    const/16 v2, 0x13

    aput-object v4, p2, v2

    const/16 v2, 0x14

    aput-object v4, p2, v2

    const/16 v2, 0x15

    aput-object v4, p2, v2

    const/16 v2, 0x16

    aput-object v4, p2, v2

    const/16 v2, 0x17

    aput-object v4, p2, v2

    const/16 v2, 0x18

    aput-object v4, p2, v2

    const/16 v2, 0x19

    aput-object v4, p2, v2

    aput-object v4, p2, v5

    :goto_0
    const/high16 v2, 0x61720000

    if-eq p1, v2, :cond_0

    const/high16 v2, 0x72750000

    if-eq p1, v2, :cond_0

    const-string v2, "-1120"

    aput-object v2, p2, v5

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillQwertyNormalCodesArray(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    aget-object v2, p2, v0

    if-nez v2, :cond_1

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    aget-object v2, v1, v0

    aput-object v2, p2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_0
    const/16 v2, 0x1b

    new-array p2, v2, [Ljava/lang/String;

    const-string v2, "1589"

    aput-object v2, p2, v3

    const-string v2, "1579"

    aput-object v2, p2, v6

    const-string v2, "1602"

    aput-object v2, p2, v7

    const/4 v2, 0x3

    const-string v3, "1601"

    aput-object v3, p2, v2

    const/4 v2, 0x4

    const-string v3, "1593"

    aput-object v3, p2, v2

    const/4 v2, 0x5

    const-string v3, "1607"

    aput-object v3, p2, v2

    const/4 v2, 0x6

    const-string v3, "1582"

    aput-object v3, p2, v2

    const/4 v2, 0x7

    const-string v3, "1581"

    aput-object v3, p2, v2

    const/16 v2, 0x8

    const-string v3, "1580"

    aput-object v3, p2, v2

    const/16 v2, 0x9

    const-string v3, "1584"

    aput-object v3, p2, v2

    const/16 v2, 0xa

    const-string v3, "1587"

    aput-object v3, p2, v2

    const/16 v2, 0xb

    const-string v3, "1610"

    aput-object v3, p2, v2

    const/16 v2, 0xc

    const-string v3, "1576"

    aput-object v3, p2, v2

    const/16 v2, 0xd

    const-string v3, "1604"

    aput-object v3, p2, v2

    const/16 v2, 0xe

    const-string v3, "1575"

    aput-object v3, p2, v2

    const/16 v2, 0xf

    const-string v3, "1578"

    aput-object v3, p2, v2

    const/16 v2, 0x10

    const-string v3, "1606"

    aput-object v3, p2, v2

    const/16 v2, 0x11

    const-string v3, "1605"

    aput-object v3, p2, v2

    const/16 v2, 0x12

    const-string v3, "1603"

    aput-object v3, p2, v2

    const/16 v2, 0x13

    const-string v3, "1569"

    aput-object v3, p2, v2

    const/16 v2, 0x14

    const-string v3, "1572"

    aput-object v3, p2, v2

    const/16 v2, 0x15

    const-string v3, "1585"

    aput-object v3, p2, v2

    const/16 v2, 0x16

    const-string v3, "1609"

    aput-object v3, p2, v2

    const/16 v2, 0x17

    const-string v3, "1577"

    aput-object v3, p2, v2

    const/16 v2, 0x18

    const-string v3, "1608"

    aput-object v3, p2, v2

    const/16 v2, 0x19

    const-string v3, "1586"

    aput-object v3, p2, v2

    const-string v2, "1592"

    aput-object v2, p2, v5

    goto/16 :goto_0

    :sswitch_1
    const/16 v2, 0x1b

    new-array p2, v2, [Ljava/lang/String;

    aput-object v4, p2, v3

    const-string v2, "119"

    aput-object v2, p2, v6

    aput-object v4, p2, v7

    const/4 v2, 0x3

    aput-object v4, p2, v2

    const/4 v2, 0x4

    aput-object v4, p2, v2

    const/4 v2, 0x5

    aput-object v4, p2, v2

    const/4 v2, 0x6

    aput-object v4, p2, v2

    const/4 v2, 0x7

    const-string v3, "105"

    aput-object v3, p2, v2

    const/16 v2, 0x8

    aput-object v4, p2, v2

    const/16 v2, 0x9

    aput-object v4, p2, v2

    const/16 v2, 0xa

    aput-object v4, p2, v2

    const/16 v2, 0xb

    aput-object v4, p2, v2

    const/16 v2, 0xc

    aput-object v4, p2, v2

    const/16 v2, 0xd

    aput-object v4, p2, v2

    const/16 v2, 0xe

    aput-object v4, p2, v2

    const/16 v2, 0xf

    aput-object v4, p2, v2

    const/16 v2, 0x10

    aput-object v4, p2, v2

    const/16 v2, 0x11

    aput-object v4, p2, v2

    const/16 v2, 0x12

    aput-object v4, p2, v2

    const/16 v2, 0x13

    aput-object v4, p2, v2

    const/16 v2, 0x14

    aput-object v4, p2, v2

    const/16 v2, 0x15

    aput-object v4, p2, v2

    const/16 v2, 0x16

    aput-object v4, p2, v2

    const/16 v2, 0x17

    aput-object v4, p2, v2

    const/16 v2, 0x18

    aput-object v4, p2, v2

    const/16 v2, 0x19

    aput-object v4, p2, v2

    aput-object v4, p2, v5

    goto/16 :goto_0

    :sswitch_2
    const/16 v2, 0x1b

    new-array p2, v2, [Ljava/lang/String;

    aput-object v4, p2, v3

    aput-object v4, p2, v6

    aput-object v4, p2, v7

    const/4 v2, 0x3

    aput-object v4, p2, v2

    const/4 v2, 0x4

    aput-object v4, p2, v2

    const/4 v2, 0x5

    aput-object v4, p2, v2

    const/4 v2, 0x6

    aput-object v4, p2, v2

    const/4 v2, 0x7

    aput-object v4, p2, v2

    const/16 v2, 0x8

    aput-object v4, p2, v2

    const/16 v2, 0x9

    aput-object v4, p2, v2

    const/16 v2, 0xa

    aput-object v4, p2, v2

    const/16 v2, 0xb

    aput-object v4, p2, v2

    const/16 v2, 0xc

    aput-object v4, p2, v2

    const/16 v2, 0xd

    aput-object v4, p2, v2

    const/16 v2, 0xe

    aput-object v4, p2, v2

    const/16 v2, 0xf

    aput-object v4, p2, v2

    const/16 v2, 0x10

    aput-object v4, p2, v2

    const/16 v2, 0x11

    aput-object v4, p2, v2

    const/16 v2, 0x12

    aput-object v4, p2, v2

    const/16 v2, 0x13

    aput-object v4, p2, v2

    const/16 v2, 0x14

    aput-object v4, p2, v2

    const/16 v2, 0x15

    aput-object v4, p2, v2

    const/16 v2, 0x16

    aput-object v4, p2, v2

    const/16 v2, 0x17

    aput-object v4, p2, v2

    const/16 v2, 0x18

    aput-object v4, p2, v2

    const/16 v2, 0x19

    const-string v3, "0x006d"

    aput-object v3, p2, v2

    aput-object v4, p2, v5

    goto/16 :goto_0

    :sswitch_3
    const/16 v2, 0x1b

    new-array p2, v2, [Ljava/lang/String;

    const-string v2, "1081"

    aput-object v2, p2, v3

    const-string v2, "1094"

    aput-object v2, p2, v6

    const-string v2, "1091"

    aput-object v2, p2, v7

    const/4 v2, 0x3

    const-string v3, "1082"

    aput-object v3, p2, v2

    const/4 v2, 0x4

    const-string v3, "1077"

    aput-object v3, p2, v2

    const/4 v2, 0x5

    const-string v3, "1085"

    aput-object v3, p2, v2

    const/4 v2, 0x6

    const-string v3, "1075"

    aput-object v3, p2, v2

    const/4 v2, 0x7

    const-string v3, "1096"

    aput-object v3, p2, v2

    const/16 v2, 0x8

    const-string v3, "1079"

    aput-object v3, p2, v2

    const/16 v2, 0x9

    const-string v3, "1093"

    aput-object v3, p2, v2

    const/16 v2, 0xa

    const-string v3, "1092"

    aput-object v3, p2, v2

    const/16 v2, 0xb

    const-string v3, "1099"

    aput-object v3, p2, v2

    const/16 v2, 0xc

    const-string v3, "1074"

    aput-object v3, p2, v2

    const/16 v2, 0xd

    const-string v3, "1072"

    aput-object v3, p2, v2

    const/16 v2, 0xe

    const-string v3, "1087"

    aput-object v3, p2, v2

    const/16 v2, 0xf

    const-string v3, "1088"

    aput-object v3, p2, v2

    const/16 v2, 0x10

    const-string v3, "1086"

    aput-object v3, p2, v2

    const/16 v2, 0x11

    const-string v3, "1083"

    aput-object v3, p2, v2

    const/16 v2, 0x12

    const-string v3, "1076"

    aput-object v3, p2, v2

    const/16 v2, 0x13

    const-string v3, "1103"

    aput-object v3, p2, v2

    const/16 v2, 0x14

    const-string v3, "1095"

    aput-object v3, p2, v2

    const/16 v2, 0x15

    const-string v3, "1089"

    aput-object v3, p2, v2

    const/16 v2, 0x16

    const-string v3, "1084"

    aput-object v3, p2, v2

    const/16 v2, 0x17

    const-string v3, "1080"

    aput-object v3, p2, v2

    const/16 v2, 0x18

    const-string v3, "1090"

    aput-object v3, p2, v2

    const/16 v2, 0x19

    const-string v3, "1100"

    aput-object v3, p2, v2

    const-string v2, "1073"

    aput-object v2, p2, v5

    goto/16 :goto_0

    :sswitch_4
    const/16 v2, 0x1b

    new-array p2, v2, [Ljava/lang/String;

    const-string v2, "113"

    aput-object v2, p2, v3

    const-string v2, "119"

    aput-object v2, p2, v6

    const-string v2, "101"

    aput-object v2, p2, v7

    const/4 v2, 0x3

    const-string v3, "114"

    aput-object v3, p2, v2

    const/4 v2, 0x4

    const-string v3, "116"

    aput-object v3, p2, v2

    const/4 v2, 0x5

    const-string v3, "121"

    aput-object v3, p2, v2

    const/4 v2, 0x6

    const-string v3, "117"

    aput-object v3, p2, v2

    const/4 v2, 0x7

    const-string v3, "105"

    aput-object v3, p2, v2

    const/16 v2, 0x8

    const-string v3, "111"

    aput-object v3, p2, v2

    const/16 v2, 0x9

    const-string v3, "112"

    aput-object v3, p2, v2

    const/16 v2, 0xa

    const-string v3, "97"

    aput-object v3, p2, v2

    const/16 v2, 0xb

    const-string v3, "115"

    aput-object v3, p2, v2

    const/16 v2, 0xc

    const-string v3, "100"

    aput-object v3, p2, v2

    const/16 v2, 0xd

    const-string v3, "102"

    aput-object v3, p2, v2

    const/16 v2, 0xe

    const-string v3, "103"

    aput-object v3, p2, v2

    const/16 v2, 0xf

    const-string v3, "104"

    aput-object v3, p2, v2

    const/16 v2, 0x10

    const-string v3, "106"

    aput-object v3, p2, v2

    const/16 v2, 0x11

    const-string v3, "107"

    aput-object v3, p2, v2

    const/16 v2, 0x12

    const-string v3, "108"

    aput-object v3, p2, v2

    const/16 v2, 0x13

    const-string v3, "122"

    aput-object v3, p2, v2

    const/16 v2, 0x14

    const-string v3, "120"

    aput-object v3, p2, v2

    const/16 v2, 0x15

    const-string v3, "99"

    aput-object v3, p2, v2

    const/16 v2, 0x16

    const-string v3, "118"

    aput-object v3, p2, v2

    const/16 v2, 0x17

    const-string v3, "98"

    aput-object v3, p2, v2

    const/16 v2, 0x18

    const-string v3, "110"

    aput-object v3, p2, v2

    const/16 v2, 0x19

    const-string v3, "109"

    aput-object v3, p2, v2

    aput-object v4, p2, v5

    goto/16 :goto_0

    :cond_2
    return-object p2

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_0
        0x617a0000 -> :sswitch_1
        0x66720000 -> :sswitch_2
        0x66724652 -> :sswitch_2
        0x72750000 -> :sswitch_3
        0x746b0000 -> :sswitch_4
    .end sparse-switch
.end method

.method private fillMobileKeyboardLabelsArrays(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    const/16 v7, 0x57

    new-array p2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x6

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x8

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x9

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xa

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xb

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xc

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xd

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xe

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xf

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x10

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x11

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x12

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x13

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x14

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x15

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x16

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x17

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x18

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x19

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x20

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x21

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x22

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x23

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x24

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x25

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x26

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x27

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x28

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x29

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x30

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x31

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x32

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x33

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x34

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x35

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x36

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x37

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x38

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x39

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x40

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x41

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x42

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x43

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x44

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x45

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x46

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x47

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x48

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x49

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x50

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x51

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x52

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x53

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x54

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x55

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x56

    const-string v8, ".,?!\'$\u20ac\u00a3\u00a5\u20a9"

    aput-object v8, p2, v7

    :goto_0
    const/high16 v7, 0x61720000

    if-eq p1, v7, :cond_1

    const/high16 v7, 0x72750000

    if-eq p1, v7, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/ime/framework/common/Language;

    move-result-object v4

    sget-object v7, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v6}, Lcom/ime/framework/common/InputManager;->isEnglishUSTypeCountry(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "MX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    const/16 v7, 0x1a

    const-string v8, "$"

    aput-object v8, p2, v7

    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillQwertyNormalLabelsArray(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v7, "SamsungIME_MKDB"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fillMobileKeyboardLabelsArrays(): LanguageID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", normalKeyboard.length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v7, p2

    array-length v8, v5

    if-le v7, v8, :cond_5

    array-length v2, p2

    :goto_2
    new-array v1, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_7

    array-length v7, p2

    if-ge v0, v7, :cond_6

    aget-object v7, p2, v0

    if-eqz v7, :cond_6

    aget-object v7, p2, v0

    aput-object v7, v1, v0

    :cond_2
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :sswitch_0
    const/16 v7, 0x58

    new-array p2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "\u0635"

    aput-object v8, p2, v7

    const/4 v7, 0x1

    const-string v8, "\u062b"

    aput-object v8, p2, v7

    const/4 v7, 0x2

    const-string v8, "\u0642"

    aput-object v8, p2, v7

    const/4 v7, 0x3

    const-string v8, "\u0641"

    aput-object v8, p2, v7

    const/4 v7, 0x4

    const-string v8, "\u0639"

    aput-object v8, p2, v7

    const/4 v7, 0x5

    const-string v8, "\u0647"

    aput-object v8, p2, v7

    const/4 v7, 0x6

    const-string v8, "\u062e"

    aput-object v8, p2, v7

    const/4 v7, 0x7

    const-string v8, "\u062d"

    aput-object v8, p2, v7

    const/16 v7, 0x8

    const-string v8, "\u062c"

    aput-object v8, p2, v7

    const/16 v7, 0x9

    const-string v8, "\u0630"

    aput-object v8, p2, v7

    const/16 v7, 0xa

    const-string v8, "\u0633"

    aput-object v8, p2, v7

    const/16 v7, 0xb

    const-string v8, "\u064a"

    aput-object v8, p2, v7

    const/16 v7, 0xc

    const-string v8, "\u0628"

    aput-object v8, p2, v7

    const/16 v7, 0xd

    const-string v8, "\u0644"

    aput-object v8, p2, v7

    const/16 v7, 0xe

    const-string v8, "\u0627"

    aput-object v8, p2, v7

    const/16 v7, 0xf

    const-string v8, "\u062a"

    aput-object v8, p2, v7

    const/16 v7, 0x10

    const-string v8, "\u0646"

    aput-object v8, p2, v7

    const/16 v7, 0x11

    const-string v8, "\u0645"

    aput-object v8, p2, v7

    const/16 v7, 0x12

    const-string v8, "\u0643"

    aput-object v8, p2, v7

    const/16 v7, 0x13

    const-string v8, "\u0621"

    aput-object v8, p2, v7

    const/16 v7, 0x14

    const-string v8, "\u0624"

    aput-object v8, p2, v7

    const/16 v7, 0x15

    const-string v8, "\u0631"

    aput-object v8, p2, v7

    const/16 v7, 0x16

    const-string v8, "\u0649"

    aput-object v8, p2, v7

    const/16 v7, 0x17

    const-string v8, "\u0629"

    aput-object v8, p2, v7

    const/16 v7, 0x18

    const-string v8, "\u0648"

    aput-object v8, p2, v7

    const/16 v7, 0x19

    const-string v8, "\u0632"

    aput-object v8, p2, v7

    const/16 v7, 0x1a

    const-string v8, "\u0638"

    aput-object v8, p2, v7

    const/16 v7, 0x1b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x20

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x21

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x22

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x23

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x24

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x25

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x26

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x27

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x28

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x29

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x30

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x31

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x32

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x33

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x34

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x35

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x36

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x37

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x38

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x39

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3c

    const-string v8, "\u0636"

    aput-object v8, p2, v7

    const/16 v7, 0x3d

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x3e

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x3f

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x40

    const-string v8, "\u063a"

    aput-object v8, p2, v7

    const/16 v7, 0x41

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x42

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x43

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x44

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x45

    const-string v8, "\u062f"

    aput-object v8, p2, v7

    const/16 v7, 0x46

    const-string v8, "\u0634"

    aput-object v8, p2, v7

    const/16 v7, 0x47

    const-string v8, "\u0626"

    aput-object v8, p2, v7

    const/16 v7, 0x48

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x49

    const-string v8, "\ufefb\ufef9\ufef7\ufef5"

    aput-object v8, p2, v7

    const/16 v7, 0x4a

    const-string v8, "\u0623\u0621\u0625\u0622"

    aput-object v8, p2, v7

    const/16 v7, 0x4b

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x4c

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x4d

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x4e

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x4f

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x50

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x51

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x52

    const-string v8, "\u0626"

    aput-object v8, p2, v7

    const/16 v7, 0x53

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x54

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x55

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x56

    const-string v8, "\u0637"

    aput-object v8, p2, v7

    const/16 v7, 0x57

    const-string v8, ""

    aput-object v8, p2, v7

    goto/16 :goto_0

    :sswitch_1
    const/16 v7, 0x57

    new-array p2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x1

    const-string v8, "w"

    aput-object v8, p2, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x6

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x7

    const-string v8, "i"

    aput-object v8, p2, v7

    const/16 v7, 0x8

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x9

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xa

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xb

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xc

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xd

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xe

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xf

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x10

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x11

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x12

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x13

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x14

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x15

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x16

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x17

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x18

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x19

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x20

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x21

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x22

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x23

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x24

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x25

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x26

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x27

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x28

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x29

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x30

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x31

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x32

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x33

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x34

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x35

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x36

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x37

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x38

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x39

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3e

    const-string v8, "\u0259\u00e8\u00e9\u00ea\u00eb\u0113\u0117\u0119\u011b\u0115"

    aput-object v8, p2, v7

    const/16 v7, 0x3f

    const-string v8, "\u0155\u0159"

    aput-object v8, p2, v7

    const/16 v7, 0x40

    const-string v8, "\u00fe\u0165\u021b\u0163"

    aput-object v8, p2, v7

    const/16 v7, 0x41

    const-string v8, "\u00fd"

    aput-object v8, p2, v7

    const/16 v7, 0x42

    const-string v8, "\u00fc\u00f9\u00fa\u00fb\u016b\u016f\u0171\u0173"

    aput-object v8, p2, v7

    const/16 v7, 0x43

    const-string v8, "\u0131\u00ec\u00ed\u00ee\u00ef\u012b\u012f"

    aput-object v8, p2, v7

    const/16 v7, 0x44

    const-string v8, "\u00f6\u00f2\u00f3\u00f4\u00f5\u00f8\u0151\u0153"

    aput-object v8, p2, v7

    const/16 v7, 0x45

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x46

    const-string v8, "\u00e0\u00e1\u00e2\u00e3\u00e4\u00e5\u00e6\u0101\u0103\u0105"

    aput-object v8, p2, v7

    const/16 v7, 0x47

    const-string v8, "\u015f\u00df\u00a7\u015b\u0161"

    aput-object v8, p2, v7

    const/16 v7, 0x48

    const-string v8, "\u010f\u0111"

    aput-object v8, p2, v7

    const/16 v7, 0x49

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4a

    const-string v8, "\u011f\u0123"

    aput-object v8, p2, v7

    const/16 v7, 0x4b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4d

    const-string v8, "\u0137"

    aput-object v8, p2, v7

    const/16 v7, 0x4e

    const-string v8, "\u013a\u013c\u013e\u0142"

    aput-object v8, p2, v7

    const/16 v7, 0x4f

    const-string v8, "\u017a\u017c\u017e"

    aput-object v8, p2, v7

    const/16 v7, 0x50

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x51

    const-string v8, "\u00e7\u0107\u010d"

    aput-object v8, p2, v7

    const/16 v7, 0x52

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x53

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x54

    const-string v8, "\u00f1\u0144\u0146\u0148"

    aput-object v8, p2, v7

    const/16 v7, 0x55

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x56

    const/4 v8, 0x0

    aput-object v8, p2, v7

    goto/16 :goto_0

    :sswitch_2
    const/16 v7, 0x57

    new-array p2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x5

    const-string v8, "z"

    aput-object v8, p2, v7

    const/4 v7, 0x6

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x8

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x9

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xa

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xb

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xc

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xd

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xe

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xf

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x10

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x11

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x12

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x13

    const-string v8, "y"

    aput-object v8, p2, v7

    const/16 v7, 0x14

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x15

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x16

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x17

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x18

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x19

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x20

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x21

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x22

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x23

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x24

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x25

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x26

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x27

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x28

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x29

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x30

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x31

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x32

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x33

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x34

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x35

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x36

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x37

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x38

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x39

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3e

    const-string v8, "\u00e8\u00e9\u00ea\u00eb\u0113\u0117\u0119\u011b\u0115\u0259"

    aput-object v8, p2, v7

    const/16 v7, 0x3f

    const-string v8, "\u0155\u0159"

    aput-object v8, p2, v7

    const/16 v7, 0x40

    const-string v8, "\u00fe\u0165\u021b\u0163"

    aput-object v8, p2, v7

    const/16 v7, 0x41

    const-string v8, "\u017a\u017c\u017e"

    aput-object v8, p2, v7

    const/16 v7, 0x42

    const-string v8, "\u00fc\u00f9\u00fa\u00fb\u016b\u016f\u0171\u0173"

    aput-object v8, p2, v7

    const/16 v7, 0x43

    const-string v8, "\u00ec\u00ed\u00ee\u00ef\u012b\u012f\u0131"

    aput-object v8, p2, v7

    const/16 v7, 0x44

    const-string v8, "\u00f6\u00f2\u00f3\u00f4\u00f5\u00f8\u0151\u0153"

    aput-object v8, p2, v7

    const/16 v7, 0x45

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x46

    const-string v8, "\u00e4\u00e0\u00e1\u00e2\u00e3\u00e5\u00e6\u0101\u0103\u0105"

    aput-object v8, p2, v7

    const/16 v7, 0x47

    const-string v8, "\u00df\u00a7\u015b\u0161\u015f"

    aput-object v8, p2, v7

    const/16 v7, 0x48

    const-string v8, "\u010f\u0111"

    aput-object v8, p2, v7

    const/16 v7, 0x49

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4a

    const-string v8, "\u0123\u011f"

    aput-object v8, p2, v7

    const/16 v7, 0x4b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4d

    const-string v8, "\u0137"

    aput-object v8, p2, v7

    const/16 v7, 0x4e

    const-string v8, "\u013a\u013c\u013e\u0142"

    aput-object v8, p2, v7

    const/16 v7, 0x4f

    const-string v8, "\u00fd"

    aput-object v8, p2, v7

    const/16 v7, 0x50

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x51

    const-string v8, "\u00e7\u0107\u010d"

    aput-object v8, p2, v7

    const/16 v7, 0x52

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x53

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x54

    const-string v8, "\u00f1\u0144\u0146\u0148"

    aput-object v8, p2, v7

    const/16 v7, 0x55

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x56

    const/4 v8, 0x0

    aput-object v8, p2, v7

    goto/16 :goto_0

    :sswitch_3
    const/16 v7, 0x1b

    new-array p2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "a"

    aput-object v8, p2, v7

    const/4 v7, 0x1

    const-string v8, "z"

    aput-object v8, p2, v7

    const/4 v7, 0x2

    const-string v8, "e"

    aput-object v8, p2, v7

    const/4 v7, 0x3

    const-string v8, "r"

    aput-object v8, p2, v7

    const/4 v7, 0x4

    const-string v8, "t"

    aput-object v8, p2, v7

    const/4 v7, 0x5

    const-string v8, "y"

    aput-object v8, p2, v7

    const/4 v7, 0x6

    const-string v8, "u"

    aput-object v8, p2, v7

    const/4 v7, 0x7

    const-string v8, "i"

    aput-object v8, p2, v7

    const/16 v7, 0x8

    const-string v8, "o"

    aput-object v8, p2, v7

    const/16 v7, 0x9

    const-string v8, "p"

    aput-object v8, p2, v7

    const/16 v7, 0xa

    const-string v8, "q"

    aput-object v8, p2, v7

    const/16 v7, 0xb

    const-string v8, "s"

    aput-object v8, p2, v7

    const/16 v7, 0xc

    const-string v8, "d"

    aput-object v8, p2, v7

    const/16 v7, 0xd

    const-string v8, "f"

    aput-object v8, p2, v7

    const/16 v7, 0xe

    const-string v8, "g"

    aput-object v8, p2, v7

    const/16 v7, 0xf

    const-string v8, "h"

    aput-object v8, p2, v7

    const/16 v7, 0x10

    const-string v8, "j"

    aput-object v8, p2, v7

    const/16 v7, 0x11

    const-string v8, "k"

    aput-object v8, p2, v7

    const/16 v7, 0x12

    const-string v8, "l"

    aput-object v8, p2, v7

    const/16 v7, 0x13

    const-string v8, "w"

    aput-object v8, p2, v7

    const/16 v7, 0x14

    const-string v8, "x"

    aput-object v8, p2, v7

    const/16 v7, 0x15

    const-string v8, "c"

    aput-object v8, p2, v7

    const/16 v7, 0x16

    const-string v8, "v"

    aput-object v8, p2, v7

    const/16 v7, 0x17

    const-string v8, "b"

    aput-object v8, p2, v7

    const/16 v7, 0x18

    const-string v8, "n"

    aput-object v8, p2, v7

    const/16 v7, 0x19

    const-string v8, "m"

    aput-object v8, p2, v7

    const/16 v7, 0x1a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    goto/16 :goto_0

    :sswitch_4
    const/16 v7, 0x56

    new-array p2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x6

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x8

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x9

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xa

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xb

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xc

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xd

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xe

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xf

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x10

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x11

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x12

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x13

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x14

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x15

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x16

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x17

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x18

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x19

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x20

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x21

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x22

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x23

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x24

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x25

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x26

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x27

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x28

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x29

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x30

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x31

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x32

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x33

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x34

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x35

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x36

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x37

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x38

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x39

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x40

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x41

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x42

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x43

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x44

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x45

    const-string v8, "\u00e5"

    aput-object v8, p2, v7

    const/16 v7, 0x46

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x47

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x48

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x49

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4d

    const-string v8, "\u00e6\u0137"

    aput-object v8, p2, v7

    const/16 v7, 0x4e

    const-string v8, "\u00f8\u013a\u013c\u013e\u0142"

    aput-object v8, p2, v7

    const/16 v7, 0x4f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x50

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x51

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x52

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x53

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x54

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x55

    const/4 v8, 0x0

    aput-object v8, p2, v7

    goto/16 :goto_0

    :sswitch_5
    const/16 v7, 0x56

    new-array p2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x6

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x8

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x9

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xa

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xb

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xc

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xd

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xe

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xf

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x10

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x11

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x12

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x13

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x14

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x15

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x16

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x17

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x18

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x19

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x20

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x21

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x22

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x23

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x24

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x25

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x26

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x27

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x28

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x29

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x30

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x31

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x32

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x33

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x34

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x35

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x36

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x37

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x38

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x39

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x40

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x41

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x42

    const-string v8, "\u00fc\u00f9\u00fa\u00fb\u016b\u016f\u0171\u0173"

    aput-object v8, p2, v7

    const/16 v7, 0x43

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x44

    const-string v8, "\u00f5\u00f6\u00f2\u00f3\u00f4\u00f8\u0151\u0153"

    aput-object v8, p2, v7

    const/16 v7, 0x45

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x46

    const-string v8, "\u00e4\u00e0\u00e1\u00e2\u00e3\u00e5\u00e6\u0101\u0103\u0105"

    aput-object v8, p2, v7

    const/16 v7, 0x47

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x48

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x49

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x50

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x51

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x52

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x53

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x54

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x55

    const/4 v8, 0x0

    aput-object v8, p2, v7

    goto/16 :goto_0

    :sswitch_6
    const/16 v7, 0x56

    new-array p2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x6

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x8

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x9

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xa

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xb

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xc

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xd

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xe

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xf

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x10

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x11

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x12

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x13

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x14

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x15

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x16

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x17

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x18

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x19

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x20

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x21

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x22

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x23

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x24

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x25

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x26

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x27

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x28

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x29

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x30

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x31

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x32

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x33

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x34

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x35

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x36

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x37

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x38

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x39

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x40

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x41

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x42

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x43

    const-string v8, "\u00e4\u00ec\u00ed\u00ee\u00ef\u012b\u012f\u0131"

    aput-object v8, p2, v7

    const/16 v7, 0x44

    const-string v8, "\u00f6\u00f2\u00f3\u00f4\u00f5\u00f8\u0151\u0153"

    aput-object v8, p2, v7

    const/16 v7, 0x45

    const-string v8, "\u00e5"

    aput-object v8, p2, v7

    const/16 v7, 0x46

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x47

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x48

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x49

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x50

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x51

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x52

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x53

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x54

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x55

    const/4 v8, 0x0

    aput-object v8, p2, v7

    goto/16 :goto_0

    :sswitch_7
    const/16 v7, 0x56

    new-array p2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x6

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x8

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x9

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xa

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xb

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xc

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xd

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xe

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xf

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x10

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x11

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x12

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x13

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x14

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x15

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x16

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x17

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x18

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x19

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x20

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x21

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x22

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x23

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x24

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x25

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x26

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x27

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x28

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x29

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x30

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x31

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x32

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x33

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x34

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x35

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x36

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x37

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x38

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x39

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x40

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x41

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x42

    const-string v8, "\u00fe\u00f9\u00fa\u00fb\u00fc\u016b\u016f\u0171\u0173"

    aput-object v8, p2, v7

    const/16 v7, 0x43

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x44

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x45

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x46

    const-string v8, "\u00e6\u00e0\u00e1\u00e2\u00e3\u00e4\u00e5\u0101\u0103\u0105"

    aput-object v8, p2, v7

    const/16 v7, 0x47

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x48

    const-string v8, "\u00f0\u0111"

    aput-object v8, p2, v7

    const/16 v7, 0x49

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x50

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x51

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x52

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x53

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x54

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x55

    const/4 v8, 0x0

    aput-object v8, p2, v7

    goto/16 :goto_0

    :sswitch_8
    const/16 v7, 0x57

    new-array p2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x6

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x8

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x9

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xa

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xb

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xc

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xd

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xe

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xf

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x10

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x11

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x12

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x13

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x14

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x15

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x16

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x17

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x18

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x19

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x20

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x21

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x22

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x23

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x24

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x25

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x26

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x27

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x28

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x29

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x30

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x31

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x32

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x33

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x34

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x35

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x36

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x37

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x38

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x39

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3e

    const-string v8, "\u0119\u0117\u00e8\u00e9\u00ea\u00eb\u0113\u011b\u0115\u0259"

    aput-object v8, p2, v7

    const/16 v7, 0x3f

    const-string v8, "\u0155\u0159"

    aput-object v8, p2, v7

    const/16 v7, 0x40

    const-string v8, "\u00fe\u0165\u021b\u0163"

    aput-object v8, p2, v7

    const/16 v7, 0x41

    const-string v8, "\u00fd"

    aput-object v8, p2, v7

    const/16 v7, 0x42

    const-string v8, "\u0173\u016b\u00f9\u00fa\u00fb\u00fc\u016f\u0171"

    aput-object v8, p2, v7

    const/16 v7, 0x43

    const-string v8, "\u012f\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    aput-object v8, p2, v7

    const/16 v7, 0x44

    const-string v8, "\u00f2\u00f3\u00f4\u00f5\u00f6\u00f8\u0151\u0153"

    aput-object v8, p2, v7

    const/16 v7, 0x45

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x46

    const-string v8, "\u0105\u00e0\u00e1\u00e2\u00e3\u00e4\u00e5\u00e6\u0101\u0103"

    aput-object v8, p2, v7

    const/16 v7, 0x47

    const-string v8, "\u0161\u00df\u00a7\u015b\u015f"

    aput-object v8, p2, v7

    const/16 v7, 0x48

    const-string v8, "\u010f\u0111"

    aput-object v8, p2, v7

    const/16 v7, 0x49

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4a

    const-string v8, "\u0123\u011f"

    aput-object v8, p2, v7

    const/16 v7, 0x4b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4d

    const-string v8, "\u0137"

    aput-object v8, p2, v7

    const/16 v7, 0x4e

    const-string v8, "\u013a\u013c\u013e\u0142"

    aput-object v8, p2, v7

    const/16 v7, 0x4f

    const-string v8, "\u017e\u017a\u017c"

    aput-object v8, p2, v7

    const/16 v7, 0x50

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x51

    const-string v8, "\u010d\u00e7\u0107"

    aput-object v8, p2, v7

    const/16 v7, 0x52

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x53

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x54

    const-string v8, "\u00f1\u0144\u0146\u0148"

    aput-object v8, p2, v7

    const/16 v7, 0x55

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x56

    const/4 v8, 0x0

    aput-object v8, p2, v7

    goto/16 :goto_0

    :sswitch_9
    const/16 v7, 0x57

    new-array p2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "\u0439"

    aput-object v8, p2, v7

    const/4 v7, 0x1

    const-string v8, "\u0446"

    aput-object v8, p2, v7

    const/4 v7, 0x2

    const-string v8, "\u0443"

    aput-object v8, p2, v7

    const/4 v7, 0x3

    const-string v8, "\u043a"

    aput-object v8, p2, v7

    const/4 v7, 0x4

    const-string v8, "\u0435"

    aput-object v8, p2, v7

    const/4 v7, 0x5

    const-string v8, "\u043d"

    aput-object v8, p2, v7

    const/4 v7, 0x6

    const-string v8, "\u0433"

    aput-object v8, p2, v7

    const/4 v7, 0x7

    const-string v8, "\u0448"

    aput-object v8, p2, v7

    const/16 v7, 0x8

    const-string v8, "\u0437"

    aput-object v8, p2, v7

    const/16 v7, 0x9

    const-string v8, "\u0445"

    aput-object v8, p2, v7

    const/16 v7, 0xa

    const-string v8, "\u0444"

    aput-object v8, p2, v7

    const/16 v7, 0xb

    const-string v8, "\u044b"

    aput-object v8, p2, v7

    const/16 v7, 0xc

    const-string v8, "\u0432"

    aput-object v8, p2, v7

    const/16 v7, 0xd

    const-string v8, "\u0430"

    aput-object v8, p2, v7

    const/16 v7, 0xe

    const-string v8, "\u043f"

    aput-object v8, p2, v7

    const/16 v7, 0xf

    const-string v8, "\u0440"

    aput-object v8, p2, v7

    const/16 v7, 0x10

    const-string v8, "\u043e"

    aput-object v8, p2, v7

    const/16 v7, 0x11

    const-string v8, "\u043b"

    aput-object v8, p2, v7

    const/16 v7, 0x12

    const-string v8, "\u0434"

    aput-object v8, p2, v7

    const/16 v7, 0x13

    const-string v8, "\u044f"

    aput-object v8, p2, v7

    const/16 v7, 0x14

    const-string v8, "\u0447"

    aput-object v8, p2, v7

    const/16 v7, 0x15

    const-string v8, "\u0441"

    aput-object v8, p2, v7

    const/16 v7, 0x16

    const-string v8, "\u043c"

    aput-object v8, p2, v7

    const/16 v7, 0x17

    const-string v8, "\u0438"

    aput-object v8, p2, v7

    const/16 v7, 0x18

    const-string v8, "\u0442"

    aput-object v8, p2, v7

    const/16 v7, 0x19

    const-string v8, "\u044c"

    aput-object v8, p2, v7

    const/16 v7, 0x1a

    const-string v8, "\u0431"

    aput-object v8, p2, v7

    const/16 v7, 0x1b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x20

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x21

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x22

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x23

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x24

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x25

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x26

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x27

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x28

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x29

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x30

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x31

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x32

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x33

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x34

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x35

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x36

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x37

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x38

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x39

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3c

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x3d

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x3e

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x3f

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x40

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x41

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x42

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x43

    const-string v8, "\u0449"

    aput-object v8, p2, v7

    const/16 v7, 0x44

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x45

    const-string v8, "\u044d"

    aput-object v8, p2, v7

    const/16 v7, 0x46

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x47

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x48

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x49

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x4a

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x4b

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x4c

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x4d

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x4e

    const-string v8, "\u0436"

    aput-object v8, p2, v7

    const/16 v7, 0x4f

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x50

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x51

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x52

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x53

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x54

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x55

    const-string v8, ""

    aput-object v8, p2, v7

    const/16 v7, 0x56

    const-string v8, "\u044e"

    aput-object v8, p2, v7

    goto/16 :goto_0

    :sswitch_a
    const/16 v7, 0x57

    new-array p2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x5

    const-string v8, "z"

    aput-object v8, p2, v7

    const/4 v7, 0x6

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x8

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x9

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xa

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xb

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xc

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xd

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xe

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xf

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x10

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x11

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x12

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x13

    const-string v8, "y"

    aput-object v8, p2, v7

    const/16 v7, 0x14

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x15

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x16

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x17

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x18

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x19

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x20

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x21

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x22

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x23

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x24

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x25

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x26

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x27

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x28

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x29

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x30

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x31

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x32

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x33

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x34

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x35

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x36

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x37

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x38

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x39

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3e

    const-string v8, "\u00e8\u00e9\u00ea\u00eb\u0113\u0117\u0119\u011b\u0115\u0259"

    aput-object v8, p2, v7

    const/16 v7, 0x3f

    const-string v8, "\u0155\u0159"

    aput-object v8, p2, v7

    const/16 v7, 0x40

    const-string v8, "\u00fe\u0165\u021b\u0163"

    aput-object v8, p2, v7

    const/16 v7, 0x41

    const-string v8, "\u017e\u017a\u017c"

    aput-object v8, p2, v7

    const/16 v7, 0x42

    const-string v8, "\u00f9\u00fa\u00fb\u00fc\u016b\u016f\u0171\u0173"

    aput-object v8, p2, v7

    const/16 v7, 0x43

    const-string v8, "\u00ec\u00ed\u00ee\u00ef\u012b\u012f\u0131"

    aput-object v8, p2, v7

    const/16 v7, 0x44

    const-string v8, "\u00f2\u00f3\u00f4\u00f5\u00f6\u00f8\u0151\u0153"

    aput-object v8, p2, v7

    const/16 v7, 0x45

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x46

    const-string v8, "\u00e0\u00e1\u00e2\u00e3\u00e4\u00e5\u00e6\u0101\u0103\u0105"

    aput-object v8, p2, v7

    const/16 v7, 0x47

    const-string v8, "\u0161\u00df\u00a7\u015b\u015f"

    aput-object v8, p2, v7

    const/16 v7, 0x48

    const-string v8, "\u010f\u0111"

    aput-object v8, p2, v7

    const/16 v7, 0x49

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4a

    const-string v8, "\u0123\u011f"

    aput-object v8, p2, v7

    const/16 v7, 0x4b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4d

    const-string v8, "\u0137"

    aput-object v8, p2, v7

    const/16 v7, 0x4e

    const-string v8, "\u013a\u013c\u013e\u0142"

    aput-object v8, p2, v7

    const/16 v7, 0x4f

    const-string v8, "\u00fd"

    aput-object v8, p2, v7

    const/16 v7, 0x50

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x51

    const-string v8, "\u010d\u00e7\u0107"

    aput-object v8, p2, v7

    const/16 v7, 0x52

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x53

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x54

    const-string v8, "\u00f1\u0144\u0146\u0148"

    aput-object v8, p2, v7

    const/16 v7, 0x55

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x56

    const/4 v8, 0x0

    aput-object v8, p2, v7

    goto/16 :goto_0

    :sswitch_b
    const/16 v7, 0x56

    new-array p2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x6

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x8

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x9

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xa

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xb

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xc

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xd

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xe

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0xf

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x10

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x11

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x12

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x13

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x14

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x15

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x16

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x17

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x18

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x19

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x20

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x21

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x22

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x23

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x24

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x25

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x26

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x27

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x28

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x29

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x30

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x31

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x32

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x33

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x34

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x35

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x36

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x37

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x38

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x39

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3e

    const-string v8, "\u00eb\u00e8\u00e9\u00ea\u0113\u0117\u0119\u011b\u0115\u0259"

    aput-object v8, p2, v7

    const/16 v7, 0x3f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x40

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x41

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x42

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x43

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x44

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x45

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x46

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x47

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x48

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x49

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x50

    const-string v8, "\u00e7\u0107\u010d"

    aput-object v8, p2, v7

    const/16 v7, 0x51

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x52

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x53

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x54

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x55

    const/4 v8, 0x0

    aput-object v8, p2, v7

    goto/16 :goto_0

    :sswitch_c
    const/16 v7, 0x57

    new-array p2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "q"

    aput-object v8, p2, v7

    const/4 v7, 0x1

    const-string v8, "w"

    aput-object v8, p2, v7

    const/4 v7, 0x2

    const-string v8, "e"

    aput-object v8, p2, v7

    const/4 v7, 0x3

    const-string v8, "r"

    aput-object v8, p2, v7

    const/4 v7, 0x4

    const-string v8, "t"

    aput-object v8, p2, v7

    const/4 v7, 0x5

    const-string v8, "y"

    aput-object v8, p2, v7

    const/4 v7, 0x6

    const-string v8, "u"

    aput-object v8, p2, v7

    const/4 v7, 0x7

    const-string v8, "i"

    aput-object v8, p2, v7

    const/16 v7, 0x8

    const-string v8, "o"

    aput-object v8, p2, v7

    const/16 v7, 0x9

    const-string v8, "p"

    aput-object v8, p2, v7

    const/16 v7, 0xa

    const-string v8, "a"

    aput-object v8, p2, v7

    const/16 v7, 0xb

    const-string v8, "s"

    aput-object v8, p2, v7

    const/16 v7, 0xc

    const-string v8, "d"

    aput-object v8, p2, v7

    const/16 v7, 0xd

    const-string v8, "f"

    aput-object v8, p2, v7

    const/16 v7, 0xe

    const-string v8, "g"

    aput-object v8, p2, v7

    const/16 v7, 0xf

    const-string v8, "h"

    aput-object v8, p2, v7

    const/16 v7, 0x10

    const-string v8, "j"

    aput-object v8, p2, v7

    const/16 v7, 0x11

    const-string v8, "k"

    aput-object v8, p2, v7

    const/16 v7, 0x12

    const-string v8, "l"

    aput-object v8, p2, v7

    const/16 v7, 0x13

    const-string v8, "z"

    aput-object v8, p2, v7

    const/16 v7, 0x14

    const-string v8, "x"

    aput-object v8, p2, v7

    const/16 v7, 0x15

    const-string v8, "c"

    aput-object v8, p2, v7

    const/16 v7, 0x16

    const-string v8, "v"

    aput-object v8, p2, v7

    const/16 v7, 0x17

    const-string v8, "b"

    aput-object v8, p2, v7

    const/16 v7, 0x18

    const-string v8, "n"

    aput-object v8, p2, v7

    const/16 v7, 0x19

    const-string v8, "m"

    aput-object v8, p2, v7

    const/16 v7, 0x1a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x1f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x20

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x21

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x22

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x23

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x24

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x25

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x26

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x27

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x28

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x29

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x2f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x30

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x31

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x32

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x33

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x34

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x35

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x36

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x37

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x38

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x39

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x3f

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x40

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x41

    const-string v8, "\u00fd"

    aput-object v8, p2, v7

    const/16 v7, 0x42

    const-string v8, "\u00fc\u00f9\u00fa\u00fb\u016b\u016f\u0171\u0173"

    aput-object v8, p2, v7

    const/16 v7, 0x43

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x44

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x45

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x46

    const-string v8, "\u00e4\u00e0\u00e1\u00e2\u00e3\u00e5\u00e6\u0101\u0103\u0105"

    aput-object v8, p2, v7

    const/16 v7, 0x47

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x48

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x49

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4a

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4b

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4c

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4d

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4e

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x4f

    const-string v8, "\u017e\u017a\u017c"

    aput-object v8, p2, v7

    const/16 v7, 0x50

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x51

    const-string v8, "\u00e7\u0107\u010d"

    aput-object v8, p2, v7

    const/16 v7, 0x52

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x53

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x54

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x55

    const/4 v8, 0x0

    aput-object v8, p2, v7

    const/16 v7, 0x56

    const/4 v8, 0x0

    aput-object v8, p2, v7

    goto/16 :goto_0

    :cond_3
    const/4 v7, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :cond_4
    :goto_5
    packed-switch v7, :pswitch_data_0

    const/16 v7, 0x1a

    const-string v8, "\u20ac"

    aput-object v8, p2, v7

    goto/16 :goto_1

    :sswitch_d
    const-string v8, "en"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x0

    goto :goto_5

    :sswitch_e
    const-string v8, "it"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x1

    goto :goto_5

    :sswitch_f
    const-string v8, "pl"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x2

    goto :goto_5

    :sswitch_10
    const-string v8, "gl"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x3

    goto :goto_5

    :sswitch_11
    const-string v8, "ca"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x4

    goto :goto_5

    :sswitch_12
    const-string v8, "eu"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x5

    goto :goto_5

    :sswitch_13
    const-string v8, "nl"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x6

    goto :goto_5

    :sswitch_14
    const-string v8, "pt"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x7

    goto :goto_5

    :sswitch_15
    const-string v8, "ro"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0x8

    goto :goto_5

    :sswitch_16
    const-string v8, "sk"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0x9

    goto :goto_5

    :sswitch_17
    const-string v8, "tr"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0xa

    goto :goto_5

    :sswitch_18
    const-string v8, "es"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0xb

    goto/16 :goto_5

    :sswitch_19
    const-string v8, "de"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0xc

    goto/16 :goto_5

    :sswitch_1a
    const-string v8, "fr"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0xd

    goto/16 :goto_5

    :sswitch_1b
    const-string v8, "mg"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0xe

    goto/16 :goto_5

    :sswitch_1c
    const-string v8, "lv"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0xf

    goto/16 :goto_5

    :sswitch_1d
    const-string v8, "vi"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0x10

    goto/16 :goto_5

    :sswitch_1e
    const-string v8, "tl"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0x11

    goto/16 :goto_5

    :sswitch_1f
    const-string v8, "uz"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0x12

    goto/16 :goto_5

    :sswitch_20
    const-string v8, "af"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0x13

    goto/16 :goto_5

    :sswitch_21
    const-string v8, "jv"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0x14

    goto/16 :goto_5

    :sswitch_22
    const-string v8, "su"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0x15

    goto/16 :goto_5

    :sswitch_23
    const-string v8, "sw"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0x16

    goto/16 :goto_5

    :sswitch_24
    const-string v8, "zu"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0x17

    goto/16 :goto_5

    :sswitch_25
    const-string v8, "xh"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0x18

    goto/16 :goto_5

    :sswitch_26
    const-string v8, "ga"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0x19

    goto/16 :goto_5

    :sswitch_27
    const-string v8, "sz"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0x1a

    goto/16 :goto_5

    :sswitch_28
    const-string v8, "id"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0x1b

    goto/16 :goto_5

    :sswitch_29
    const-string v8, "ms"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0x1c

    goto/16 :goto_5

    :sswitch_2a
    const-string v8, "ko"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v7, 0x1d

    goto/16 :goto_5

    :pswitch_0
    const/16 v7, 0x1a

    const-string v8, "\u20ac"

    aput-object v8, p2, v7

    goto/16 :goto_1

    :pswitch_1
    const/16 v7, 0x1a

    const-string v8, "$"

    aput-object v8, p2, v7

    goto/16 :goto_1

    :pswitch_2
    const/16 v7, 0x1a

    const-string v8, "."

    aput-object v8, p2, v7

    goto/16 :goto_1

    :cond_5
    array-length v2, v5

    goto/16 :goto_2

    :cond_6
    array-length v7, v5

    if-ge v0, v7, :cond_2

    aget-object v7, v5, v0

    aput-object v7, v1, v0

    goto/16 :goto_4

    :cond_7
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_0
        0x617a0000 -> :sswitch_1
        0x64610000 -> :sswitch_4
        0x64650000 -> :sswitch_2
        0x65740000 -> :sswitch_5
        0x66690000 -> :sswitch_6
        0x66720000 -> :sswitch_3
        0x66724652 -> :sswitch_3
        0x69730000 -> :sswitch_7
        0x6c740000 -> :sswitch_8
        0x6e620000 -> :sswitch_4
        0x72750000 -> :sswitch_9
        0x736c0000 -> :sswitch_a
        0x73710000 -> :sswitch_b
        0x746b0000 -> :sswitch_c
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xc25 -> :sswitch_20
        0xc5e -> :sswitch_11
        0xc81 -> :sswitch_19
        0xca9 -> :sswitch_d
        0xcae -> :sswitch_18
        0xcb0 -> :sswitch_12
        0xccc -> :sswitch_1a
        0xcda -> :sswitch_26
        0xce5 -> :sswitch_10
        0xd1b -> :sswitch_28
        0xd2b -> :sswitch_e
        0xd4c -> :sswitch_21
        0xd64 -> :sswitch_2a
        0xd8a -> :sswitch_1c
        0xd9a -> :sswitch_1b
        0xda6 -> :sswitch_29
        0xdbe -> :sswitch_13
        0xdfc -> :sswitch_f
        0xe04 -> :sswitch_14
        0xe3d -> :sswitch_15
        0xe58 -> :sswitch_16
        0xe62 -> :sswitch_22
        0xe64 -> :sswitch_23
        0xe67 -> :sswitch_27
        0xe78 -> :sswitch_1e
        0xe7e -> :sswitch_17
        0xea5 -> :sswitch_1f
        0xeb3 -> :sswitch_1d
        0xef0 -> :sswitch_25
        0xf3b -> :sswitch_24
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private fillMobileKeyboardNumberCodesArray(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsKorMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "0x23"

    aput-object v0, p2, v1

    const-string v0, "0x31"

    aput-object v0, p2, v2

    const-string v0, "0x32"

    aput-object v0, p2, v3

    const-string v0, "0x33"

    aput-object v0, p2, v4

    const-string v0, "0x28"

    aput-object v0, p2, v5

    const/4 v0, 0x5

    const-string v1, "0x29"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "0x5f"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "0x2d"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x2b"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x40"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x2a"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "0x34"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "0x35"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "0x36"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "0x2f"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x3a"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "0x3b"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "0x27"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "0x22"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "0x37"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "0x38"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "0x39"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "0x3f"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x21"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x2c"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x5e"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x24"

    aput-object v1, p2, v0

    :goto_0
    return-object p2

    :cond_0
    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "0x23"

    aput-object v0, p2, v1

    const-string v0, "0x31"

    aput-object v0, p2, v2

    const-string v0, "0x32"

    aput-object v0, p2, v3

    const-string v0, "0x33"

    aput-object v0, p2, v4

    const-string v0, "0x28"

    aput-object v0, p2, v5

    const/4 v0, 0x5

    const-string v1, "0x29"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "0x5f"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "0x2d"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x2b"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x40"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x2a"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "0x34"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "0x35"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "0x36"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "0x2f"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x3a"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "0x3b"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "0x27"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "0x22"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "0x37"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "0x38"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "0x39"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "0x3f"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x21"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x2c"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x2e"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x24"

    aput-object v1, p2, v0

    goto/16 :goto_0
.end method

.method private fillMobileKeyboardNumberLabelsArray(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsKorMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "#"

    aput-object v0, p2, v1

    const-string v0, "1"

    aput-object v0, p2, v2

    const-string v0, "2"

    aput-object v0, p2, v3

    const-string v0, "3"

    aput-object v0, p2, v4

    const-string v0, "("

    aput-object v0, p2, v5

    const/4 v0, 0x5

    const-string v1, ")"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "_"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "-"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "+"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "@"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "*"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "4"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "5"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "6"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "/"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, ":"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, ";"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\'"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\""

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "7"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "8"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "9"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "?"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "!"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, ","

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "^"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "$"

    aput-object v1, p2, v0

    :goto_0
    return-object p2

    :cond_0
    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "#"

    aput-object v0, p2, v1

    const-string v0, "1"

    aput-object v0, p2, v2

    const-string v0, "2"

    aput-object v0, p2, v3

    const-string v0, "3"

    aput-object v0, p2, v4

    const-string v0, "("

    aput-object v0, p2, v5

    const/4 v0, 0x5

    const-string v1, ")"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "_"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "-"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "+"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "@"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "*"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "4"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "5"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "6"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "/"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, ":"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, ";"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\'"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\""

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "7"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "8"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "9"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "?"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "!"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, ","

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "."

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "$"

    aput-object v1, p2, v0

    goto/16 :goto_0
.end method

.method private fillMobileKeyboardSymbolCodesArray(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/16 v4, 0x1a

    const/4 v3, 0x0

    const/16 v2, 0x51

    new-array p2, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, p2, v2

    const/4 v2, 0x1

    aput-object v3, p2, v2

    const/4 v2, 0x2

    aput-object v3, p2, v2

    const/4 v2, 0x3

    aput-object v3, p2, v2

    const/4 v2, 0x4

    aput-object v3, p2, v2

    const/4 v2, 0x5

    aput-object v3, p2, v2

    const/4 v2, 0x6

    aput-object v3, p2, v2

    const/4 v2, 0x7

    aput-object v3, p2, v2

    const/16 v2, 0x8

    aput-object v3, p2, v2

    const/16 v2, 0x9

    aput-object v3, p2, v2

    const/16 v2, 0xa

    aput-object v3, p2, v2

    const/16 v2, 0xb

    aput-object v3, p2, v2

    const/16 v2, 0xc

    aput-object v3, p2, v2

    const/16 v2, 0xd

    aput-object v3, p2, v2

    const/16 v2, 0xe

    aput-object v3, p2, v2

    const/16 v2, 0xf

    aput-object v3, p2, v2

    const/16 v2, 0x10

    aput-object v3, p2, v2

    const/16 v2, 0x11

    aput-object v3, p2, v2

    const/16 v2, 0x12

    aput-object v3, p2, v2

    const/16 v2, 0x13

    aput-object v3, p2, v2

    const/16 v2, 0x14

    aput-object v3, p2, v2

    const/16 v2, 0x15

    aput-object v3, p2, v2

    const/16 v2, 0x16

    aput-object v3, p2, v2

    const/16 v2, 0x17

    aput-object v3, p2, v2

    const/16 v2, 0x18

    aput-object v3, p2, v2

    const/16 v2, 0x19

    aput-object v3, p2, v2

    aput-object v3, p2, v4

    const/16 v2, 0x1b

    const-string v3, "0x2B"

    aput-object v3, p2, v2

    const/16 v2, 0x1c

    const-string v3, "0xD7"

    aput-object v3, p2, v2

    const/16 v2, 0x1d

    const-string v3, "0xF7"

    aput-object v3, p2, v2

    const/16 v2, 0x1e

    const-string v3, "0x3D"

    aput-object v3, p2, v2

    const/16 v2, 0x1f

    const-string v3, "0x25"

    aput-object v3, p2, v2

    const/16 v2, 0x20

    const-string v3, "0x5F"

    aput-object v3, p2, v2

    const/16 v2, 0x21

    const-string v3, "0x20AC"

    aput-object v3, p2, v2

    const/16 v2, 0x22

    const-string v3, "0xA3"

    aput-object v3, p2, v2

    const/16 v2, 0x23

    const-string v3, "0xA5"

    aput-object v3, p2, v2

    const/16 v2, 0x24

    const-string v3, "0x20A9"

    aput-object v3, p2, v2

    const/16 v2, 0x25

    const-string v3, "0x40"

    aput-object v3, p2, v2

    const/16 v2, 0x26

    const-string v3, "0x24"

    aput-object v3, p2, v2

    const/16 v2, 0x27

    const-string v3, "0x21"

    aput-object v3, p2, v2

    const/16 v2, 0x28

    const-string v3, "0x23"

    aput-object v3, p2, v2

    const/16 v2, 0x29

    const-string v3, "0x2F"

    aput-object v3, p2, v2

    const/16 v2, 0x2a

    const-string v3, "0x5E"

    aput-object v3, p2, v2

    const/16 v2, 0x2b

    const-string v3, "0x26"

    aput-object v3, p2, v2

    const/16 v2, 0x2c

    const-string v3, "0x2A"

    aput-object v3, p2, v2

    const/16 v2, 0x2d

    const-string v3, "0x28"

    aput-object v3, p2, v2

    const/16 v2, 0x2e

    const-string v3, "0x29"

    aput-object v3, p2, v2

    const/16 v2, 0x2f

    const-string v3, "0x2D"

    aput-object v3, p2, v2

    const/16 v2, 0x30

    const-string v3, "0x27"

    aput-object v3, p2, v2

    const/16 v2, 0x31

    const-string v3, "0x22"

    aput-object v3, p2, v2

    const/16 v2, 0x32

    const-string v3, "0x3A"

    aput-object v3, p2, v2

    const/16 v2, 0x33

    const-string v3, "0x3B"

    aput-object v3, p2, v2

    const/16 v2, 0x34

    const-string v3, "0x2C"

    aput-object v3, p2, v2

    const/16 v2, 0x35

    const-string v3, "0x3F"

    aput-object v3, p2, v2

    const/16 v2, 0x36

    const-string v3, "0x60"

    aput-object v3, p2, v2

    const/16 v2, 0x37

    const-string v3, "0x7E"

    aput-object v3, p2, v2

    const/16 v2, 0x38

    const-string v3, "0x5C"

    aput-object v3, p2, v2

    const/16 v2, 0x39

    const-string v3, "0x7C"

    aput-object v3, p2, v2

    const/16 v2, 0x3a

    const-string v3, "0x7B"

    aput-object v3, p2, v2

    const/16 v2, 0x3b

    const-string v3, "0x7D"

    aput-object v3, p2, v2

    const/16 v2, 0x3c

    const-string v3, "0x3C"

    aput-object v3, p2, v2

    const/16 v2, 0x3d

    const-string v3, "0x3E"

    aput-object v3, p2, v2

    const/16 v2, 0x3e

    const-string v3, "0x5B"

    aput-object v3, p2, v2

    const/16 v2, 0x3f

    const-string v3, "0x5D"

    aput-object v3, p2, v2

    const/16 v2, 0x40

    const-string v3, "0xB0"

    aput-object v3, p2, v2

    const/16 v2, 0x41

    const-string v3, "0x2022"

    aput-object v3, p2, v2

    const/16 v2, 0x42

    const-string v3, "0x25CB"

    aput-object v3, p2, v2

    const/16 v2, 0x43

    const-string v3, "0x25CF"

    aput-object v3, p2, v2

    const/16 v2, 0x44

    const-string v3, "0x25A1"

    aput-object v3, p2, v2

    const/16 v2, 0x45

    const-string v3, "0x25A0"

    aput-object v3, p2, v2

    const/16 v2, 0x46

    const-string v3, "0x2664"

    aput-object v3, p2, v2

    const/16 v2, 0x47

    const-string v3, "0x2661"

    aput-object v3, p2, v2

    const/16 v2, 0x48

    const-string v3, "0x2662"

    aput-object v3, p2, v2

    const/16 v2, 0x49

    const-string v3, "0x2667"

    aput-object v3, p2, v2

    const/16 v2, 0x4a

    const-string v3, "0x2606"

    aput-object v3, p2, v2

    const/16 v2, 0x4b

    const-string v3, "0x25AA"

    aput-object v3, p2, v2

    const/16 v2, 0x4c

    const-string v3, "0xA4"

    aput-object v3, p2, v2

    const/16 v2, 0x4d

    const-string v3, "0x300A"

    aput-object v3, p2, v2

    const/16 v2, 0x4e

    const-string v3, "0x300B"

    aput-object v3, p2, v2

    const/16 v2, 0x4f

    const-string v3, "0xA1"

    aput-object v3, p2, v2

    const/16 v2, 0x50

    const-string v3, "0xBF"

    aput-object v3, p2, v2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillMobileKeyboardCodesArray(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, v4, :cond_1

    aget-object v2, p2, v0

    if-nez v2, :cond_0

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v2, v1, v0

    aput-object v2, p2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private fillMobileKeyboardSymbolLabelsArray(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/16 v4, 0x1a

    const/4 v3, 0x0

    const/16 v2, 0x51

    new-array p2, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, p2, v2

    const/4 v2, 0x1

    aput-object v3, p2, v2

    const/4 v2, 0x2

    aput-object v3, p2, v2

    const/4 v2, 0x3

    aput-object v3, p2, v2

    const/4 v2, 0x4

    aput-object v3, p2, v2

    const/4 v2, 0x5

    aput-object v3, p2, v2

    const/4 v2, 0x6

    aput-object v3, p2, v2

    const/4 v2, 0x7

    aput-object v3, p2, v2

    const/16 v2, 0x8

    aput-object v3, p2, v2

    const/16 v2, 0x9

    aput-object v3, p2, v2

    const/16 v2, 0xa

    aput-object v3, p2, v2

    const/16 v2, 0xb

    aput-object v3, p2, v2

    const/16 v2, 0xc

    aput-object v3, p2, v2

    const/16 v2, 0xd

    aput-object v3, p2, v2

    const/16 v2, 0xe

    aput-object v3, p2, v2

    const/16 v2, 0xf

    aput-object v3, p2, v2

    const/16 v2, 0x10

    aput-object v3, p2, v2

    const/16 v2, 0x11

    aput-object v3, p2, v2

    const/16 v2, 0x12

    aput-object v3, p2, v2

    const/16 v2, 0x13

    aput-object v3, p2, v2

    const/16 v2, 0x14

    aput-object v3, p2, v2

    const/16 v2, 0x15

    aput-object v3, p2, v2

    const/16 v2, 0x16

    aput-object v3, p2, v2

    const/16 v2, 0x17

    aput-object v3, p2, v2

    const/16 v2, 0x18

    aput-object v3, p2, v2

    const/16 v2, 0x19

    aput-object v3, p2, v2

    aput-object v3, p2, v4

    const/16 v2, 0x1b

    const-string v3, "+"

    aput-object v3, p2, v2

    const/16 v2, 0x1c

    const-string v3, "\u00d7"

    aput-object v3, p2, v2

    const/16 v2, 0x1d

    const-string v3, "\u00f7"

    aput-object v3, p2, v2

    const/16 v2, 0x1e

    const-string v3, "="

    aput-object v3, p2, v2

    const/16 v2, 0x1f

    const-string v3, "%"

    aput-object v3, p2, v2

    const/16 v2, 0x20

    const-string v3, "_"

    aput-object v3, p2, v2

    const/16 v2, 0x21

    const-string v3, "\u20ac"

    aput-object v3, p2, v2

    const/16 v2, 0x22

    const-string v3, "\u00a3"

    aput-object v3, p2, v2

    const/16 v2, 0x23

    const-string v3, "\u00a5"

    aput-object v3, p2, v2

    const/16 v2, 0x24

    const-string v3, "\u20a9"

    aput-object v3, p2, v2

    const/16 v2, 0x25

    const-string v3, "@"

    aput-object v3, p2, v2

    const/16 v2, 0x26

    const-string v3, "$"

    aput-object v3, p2, v2

    const/16 v2, 0x27

    const-string v3, "!"

    aput-object v3, p2, v2

    const/16 v2, 0x28

    const-string v3, "#"

    aput-object v3, p2, v2

    const/16 v2, 0x29

    const-string v3, "/"

    aput-object v3, p2, v2

    const/16 v2, 0x2a

    const-string v3, "^"

    aput-object v3, p2, v2

    const/16 v2, 0x2b

    const-string v3, "&"

    aput-object v3, p2, v2

    const/16 v2, 0x2c

    const-string v3, "*"

    aput-object v3, p2, v2

    const/16 v2, 0x2d

    const-string v3, "("

    aput-object v3, p2, v2

    const/16 v2, 0x2e

    const-string v3, ")"

    aput-object v3, p2, v2

    const/16 v2, 0x2f

    const-string v3, "-"

    aput-object v3, p2, v2

    const/16 v2, 0x30

    const-string v3, "\'"

    aput-object v3, p2, v2

    const/16 v2, 0x31

    const-string v3, "\""

    aput-object v3, p2, v2

    const/16 v2, 0x32

    const-string v3, ":"

    aput-object v3, p2, v2

    const/16 v2, 0x33

    const-string v3, ";"

    aput-object v3, p2, v2

    const/16 v2, 0x34

    const-string v3, ","

    aput-object v3, p2, v2

    const/16 v2, 0x35

    const-string v3, "?"

    aput-object v3, p2, v2

    const/16 v2, 0x36

    const-string v3, "`"

    aput-object v3, p2, v2

    const/16 v2, 0x37

    const-string v3, "~"

    aput-object v3, p2, v2

    const/16 v2, 0x38

    const-string v3, "\\"

    aput-object v3, p2, v2

    const/16 v2, 0x39

    const-string v3, "|"

    aput-object v3, p2, v2

    const/16 v2, 0x3a

    const-string v3, "{"

    aput-object v3, p2, v2

    const/16 v2, 0x3b

    const-string v3, "}"

    aput-object v3, p2, v2

    const/16 v2, 0x3c

    const-string v3, "<"

    aput-object v3, p2, v2

    const/16 v2, 0x3d

    const-string v3, ">"

    aput-object v3, p2, v2

    const/16 v2, 0x3e

    const-string v3, "["

    aput-object v3, p2, v2

    const/16 v2, 0x3f

    const-string v3, "]"

    aput-object v3, p2, v2

    const/16 v2, 0x40

    const-string v3, "\u00b0"

    aput-object v3, p2, v2

    const/16 v2, 0x41

    const-string v3, "\u2022"

    aput-object v3, p2, v2

    const/16 v2, 0x42

    const-string v3, "\u25cb"

    aput-object v3, p2, v2

    const/16 v2, 0x43

    const-string v3, "\u25cf"

    aput-object v3, p2, v2

    const/16 v2, 0x44

    const-string v3, "\u25a1"

    aput-object v3, p2, v2

    const/16 v2, 0x45

    const-string v3, "\u25a0"

    aput-object v3, p2, v2

    const/16 v2, 0x46

    const-string v3, "\u2664"

    aput-object v3, p2, v2

    const/16 v2, 0x47

    const-string v3, "\u2661"

    aput-object v3, p2, v2

    const/16 v2, 0x48

    const-string v3, "\u2662"

    aput-object v3, p2, v2

    const/16 v2, 0x49

    const-string v3, "\u2667"

    aput-object v3, p2, v2

    const/16 v2, 0x4a

    const-string v3, "\u2606"

    aput-object v3, p2, v2

    const/16 v2, 0x4b

    const-string v3, "\u25aa"

    aput-object v3, p2, v2

    const/16 v2, 0x4c

    const-string v3, "\u00a4"

    aput-object v3, p2, v2

    const/16 v2, 0x4d

    const-string v3, "\u300a"

    aput-object v3, p2, v2

    const/16 v2, 0x4e

    const-string v3, "\u300b"

    aput-object v3, p2, v2

    const/16 v2, 0x4f

    const-string v3, "\u00a1"

    aput-object v3, p2, v2

    const/16 v2, 0x50

    const-string v3, "\u00bf"

    aput-object v3, p2, v2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillMobileKeyboardLabelsArrays(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, v4, :cond_1

    aget-object v2, p2, v0

    if-nez v2, :cond_0

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v2, v1, v0

    aput-object v2, p2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private fillPhonepadNormalCodesArray(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object p2

    :sswitch_0
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "46,44,63,33"

    aput-object v0, p2, v1

    const-string v0, "97,98,99"

    aput-object v0, p2, v3

    const-string v0, "100,101,102"

    aput-object v0, p2, v4

    const-string v0, "46,47"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "64,46"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "106,107,108"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "119,120,121,122"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "48"

    aput-object v1, p2, v0

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "46,1548,1567,33"

    aput-object v0, p2, v1

    const-string v0, "1576,1578,1577,1579"

    aput-object v0, p2, v3

    const-string v0, "1575,1571,1573,1570,1609,1572,1574,1569"

    aput-object v0, p2, v4

    const-string v0, "46,1567,1548,33,1563,34,45,64,58,47"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "46,1567,1548,33,1563,34,45,64,58,47"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "1587,1588,1589,1590"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1583,1584,1585,1586"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1580,1581,1582"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1606,1607,1608,1610"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1601,1602,1603,1604,1605"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1591,1592,1593,1594"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "48"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,234,235,233"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105,239"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,329,244,243"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,251,250"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "119,120,121,122,253"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,231"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,601"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105,287,305"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,246"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115,351"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,252"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "46,44,63,33"

    aput-object v0, p2, v1

    const-string v0, "1072,1073,1074,1075"

    aput-object v0, p2, v3

    const-string v0, "1076,1077,1105,1078,1079,1110"

    aput-object v0, p2, v4

    const-string v0, "46,47"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "64,46"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "1081,1082,1083"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1084,1085,1086,1087"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1088,1089,1090,1091,1118"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1092,1093,1094,1095"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1096,1099"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1100,1101,1102,1103"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "1072,1073,1074,1075"

    aput-object v0, p2, v3

    const-string v0, "1076,1077,1078,1079"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "1080,1081,1082,1083"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1084,1085,1086,1087"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1088,1089,1090,1091"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1092,1093,1094,1095"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1096,1097,1098"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1100,1102,1103"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "1072,1073,1074,1075"

    aput-object v0, p2, v3

    const-string v0, "1076,1077,1105,1078,1079"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "1080,1081,1082,1083"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1084,1085,1086,1087"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1088,1089,1090,1091"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1092,1093,1094,1095"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1096,1097,1098,1099"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1100,1101,1102,1103"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "1072,1073,1074,1075"

    aput-object v0, p2, v3

    const-string v0, "1076,1077,1105,1078,1079"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "1080,1081,1082,1083"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1084,1085,1086,1257,1087"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1088,1089,1090,1091,1199"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1092,1093,1094,1095"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1096,1097,1098,1099"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1100,1101,1102,1103"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,231,224"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,233,232"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105,237,239"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,243,242"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,250,252"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,225,269"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,271,233,283"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105,237"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,328,243"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115,345,353"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,357,250,367"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "119,120,121,122,253,382"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0xa

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,230,229,225,228"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,233,232"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,248,244,246"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,252"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0xa

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,228"

    aput-object v0, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,246"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115,223,167"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,252"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "945,946,947,940"

    aput-object v0, p2, v3

    const-string v0, "948,949,950,941"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "951,952,953,942,943,970,912"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "954,955,956"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "957,958,959,972"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "960,961,963,962"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "964,965,966,973,971,944"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "967,968,969,974"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0xa

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,225"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,233"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105,237"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,241,243"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,250,252"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,228"

    aput-object v0, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,245,246"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115,353"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,252"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "119,120,121,122,382"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0x8

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,241"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_10
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "46,1548,1567,33"

    aput-object v0, p2, v1

    const-string v0, "1576,1662,1578,1579"

    aput-object v0, p2, v3

    const-string v0, "1575,1570,1574,1569"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    const-string v1, "1583,1584,1585,1586,1688"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1580,1670,1581,1582"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1606,1608,1607,1740"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1601,1602,1705,1711,1604,1605"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1591,1592,1593,1594"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0xa

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,228,229"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,233"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,246"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_12
    const/16 v0, 0xa

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,229,228"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,233"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,246"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_13
    const/16 v0, 0xa

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,224,226,231"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,233,232,234,235"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105,238,239"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,244,339"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,251,249"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_14
    const/16 v0, 0xa

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,224"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,233"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105,237"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,243"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,250"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_15
    const/16 v0, 0xa

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99"

    aput-object v0, p2, v3

    const-string v0, "100,101,102"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,241"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_16
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "1491,1492,1493"

    aput-object v0, p2, v3

    const-string v0, "1488,1489,1490"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "1502,1501,1504,1503"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1497,1499,1498,1500"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1494,1495,1496"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1512,1513,1514"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1510,1509,1511"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1505,1506,1508,1507"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_17
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,269,263"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,273"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115,353"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "119,120,121,122,382"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_18
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,225"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,233"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105,237"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "106,107,108"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,243,246,337"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,250,252,369"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "119,120,121,122"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_19
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "1417,44,1374,1372"

    aput-object v0, p2, v1

    const-string v0, "1377,1378,1379,1380"

    aput-object v0, p2, v3

    const-string v0, "1381,1382,1383,1384"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "1385,1386,1387,1388,1389"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1390,1391,1392,1393,1394"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1395,1396,1397,1398,1399"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1400,1401,1402,1403,1404"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1405,1406,1407,1408,1409"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1410,1411,1412,1413,1414,1415"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "1373"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_1a
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,225,230"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,240,233"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105,237"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,243,246"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,250,254"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "119,120,121,122,253"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_1b
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,224"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,232,233"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105,236"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,242,243"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,249"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_1c
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "4304,4305,4306,4307"

    aput-object v0, p2, v3

    const-string v0, "4308,4309,4310,4311"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "4312,4313,4314,4315"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "4316,4317,4318,4319"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "4320,4321,4322,4323"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "4324,4325,4326,4327"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "4328,4329,4330,4331"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "4332,4333,4334,4335,4336"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_1d
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "1072,1241,1073,1074,1075,1171"

    aput-object v0, p2, v3

    const-string v0, "1076,1077,1105,1078,1079"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "1080,1081,1082,1179,1083"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1084,1085,1187,1086,1257,1087"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1088,1089,1090,1091,1201,1199"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1092,1093,1211,1094,1095"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1096,1097,1098,1099,1110"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1100,1101,1102,1103"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_1e
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,261,269"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,281,279"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105,303"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115,353"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,363,371"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "119,120,121,122,382"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_1f
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,257,269"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,275"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105,291,299"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "106,107,108,311,316"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,326"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115,353"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,363"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "119,120,121,122,382"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_20
    const/16 v0, 0xa

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,230,229,225,228"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,233,232"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,248,244,246"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,252"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_21
    const/16 v0, 0xa

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,228,225,224,226,231"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,235,233,232,234"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105,239,237,236,238"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,246,243,242,244"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115,223"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,252,250,249,251"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_22
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,261,263"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,281"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "106,107,108,322"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,324,243"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115,347"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "119,120,121,122,378,380"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_23
    const/16 v0, 0xa

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,225,226,227,224,231"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,233,234"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105,237"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,243,244,245"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,250,252"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_24
    const/16 v0, 0xa

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,259,226"

    aput-object v0, p2, v3

    const-string v0, "100,101,102"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105,238"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115,351"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,355"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_25
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,225,228,269"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,271,233"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105,237"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "106,107,108,314,318"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,328,243,244"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115,341,353"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,357,250"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "119,120,121,122,253,382"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_26
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,269,263"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,273"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115,353"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "119,120,121,122,382"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_27
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,231"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,235"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_28
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,227,261,263"

    aput-object v0, p2, v3

    const-string v0, "100,101,102,281"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    const-string v1, "106,107,108,322"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,324,335,333,244,245,243"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115,347"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "119,120,121,122,378,380"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_29
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,228,231"

    aput-object v0, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,328,246"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115,351"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,252"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "119,120,121,122,253,382"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2a
    const/16 v0, 0xa

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,98,99,231,226"

    aput-object v0, p2, v3

    const-string v0, "100,101,102"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "103,104,105,305,287,238"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,246,242,244"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112,113,114,115,351"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,118,252,250,251"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2b
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "1072,1073,1074,1075,1169"

    aput-object v0, p2, v3

    const-string v0, "1076,1077,1108,1078,1079"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "1080,1110,1111,1081,1082,1083"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1084,1085,1086,1087"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1088,1089,1090,1091"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1092,1093,1094,1095"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1096,1097"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1100,1102,1103"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2c
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    const-string v1, "8216"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2d
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "1748,1548,1567,33"

    aput-object v0, p2, v1

    const-string v0, "1576,1662,1578,1657,1579"

    aput-object v0, p2, v3

    const-string v0, "1575,1570,1574,1569,1729"

    aput-object v0, p2, v4

    const-string v0, "46,1548,1567,33"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "46,1548,1567,33"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "1587,1588,1589,1590"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1583,1672,1584,1585,1681,1586,1688"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1580,1670,1581,1582"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1606,1722,1608,1726,1740,1746"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1601,1602,1705,1711,1604,1605"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1591,1592,1593,1594"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2e
    const/16 v0, 0xa

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "97,259,226,98,99"

    aput-object v0, p2, v3

    const-string v0, "100,273,101,234,102"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "109,110,111,244,417"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    const-string v1, "116,117,432,118"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2f
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "1072,1073,1074,1075"

    aput-object v0, p2, v3

    const-string v0, "1076,1107,1077,1078"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "1079,1109,1080,1112"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1082,1083,1113,1084"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1085,1114,1086,1087"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1088,1089,1090,1116"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1091,1092,1093,1094"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1095,1119,1096"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_30
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    const-string v1, "3648,3649,3650,3651,3652,3632,3634,3635"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61660000 -> :sswitch_2
        0x61720000 -> :sswitch_1
        0x617a0000 -> :sswitch_3
        0x62650000 -> :sswitch_4
        0x62670000 -> :sswitch_5
        0x63610000 -> :sswitch_8
        0x63730000 -> :sswitch_9
        0x64610000 -> :sswitch_a
        0x64650000 -> :sswitch_b
        0x656c0000 -> :sswitch_c
        0x656e0000 -> :sswitch_0
        0x65730000 -> :sswitch_d
        0x65740000 -> :sswitch_e
        0x65750000 -> :sswitch_f
        0x66610000 -> :sswitch_10
        0x66690000 -> :sswitch_11
        0x66720000 -> :sswitch_13
        0x67610000 -> :sswitch_14
        0x676c0000 -> :sswitch_15
        0x68720000 -> :sswitch_17
        0x68750000 -> :sswitch_18
        0x68790000 -> :sswitch_19
        0x69730000 -> :sswitch_1a
        0x69740000 -> :sswitch_1b
        0x69770000 -> :sswitch_16
        0x6b610000 -> :sswitch_1c
        0x6b6b0000 -> :sswitch_1d
        0x6c740000 -> :sswitch_1e
        0x6c760000 -> :sswitch_1f
        0x6d6b0000 -> :sswitch_2f
        0x6d6e0000 -> :sswitch_7
        0x6e620000 -> :sswitch_20
        0x6e6c0000 -> :sswitch_21
        0x706c0000 -> :sswitch_22
        0x70740000 -> :sswitch_23
        0x726f0000 -> :sswitch_24
        0x72750000 -> :sswitch_6
        0x736b0000 -> :sswitch_25
        0x736c0000 -> :sswitch_26
        0x73710000 -> :sswitch_27
        0x73760000 -> :sswitch_12
        0x737a0000 -> :sswitch_28
        0x74680000 -> :sswitch_30
        0x746b0000 -> :sswitch_29
        0x74720000 -> :sswitch_2a
        0x756b0000 -> :sswitch_2b
        0x75720000 -> :sswitch_2d
        0x757a0000 -> :sswitch_2c
        0x76690000 -> :sswitch_2e
    .end sparse-switch
.end method

.method private fillPhonepadNormalLabelsArray(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object p2

    :sswitch_0
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, ".,?!"

    aput-object v0, p2, v1

    const-string v0, "abc"

    aput-object v0, p2, v3

    const-string v0, "def"

    aput-object v0, p2, v4

    const-string v0, "./"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "@."

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "ghi"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "jkl"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "mno"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "pqrs"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "tuv"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "wxyz"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, ".\u060c\u061f!"

    aput-object v0, p2, v1

    const-string v0, "\u0628\u200c\u062a\u200c\u0629\u200c\u062b"

    aput-object v0, p2, v3

    const-string v0, "\u0627\u200c\u0621"

    aput-object v0, p2, v4

    const-string v0, ".\u061f\u060c!"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, ".\u061f\u060c!"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0633\u200c\u0634\u200c\u0635\u200c\u0636"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u062f\u200c\u0630\u200c\u0631\u200c\u0632"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u062c\u200c\u062d\u200c\u062e"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0646\u200c\u0647\u200c\u0648\u200c\u064a"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0641\u200c\u0642\u200c\u0643\u200c\u0644\u200c\u0645"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0637\u200c\u0638\u200c\u0639\u200c\u063a"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, ".,?!"

    aput-object v0, p2, v1

    const-string v0, "\u0430\u0431\u0432\u0433"

    aput-object v0, p2, v3

    const-string v0, "\u0434\u0435\u0436\u0437\u0456"

    aput-object v0, p2, v4

    const-string v0, "./"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "@."

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0439\u043a\u043b"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u043c\u043d\u043e\u043f"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0440\u0441\u0442\u0443\u045e"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0444\u0445\u0446\u0447"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0448\u044b"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u044c\u044d\u044e\u044f"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "\u0430\u0431\u0432\u0433"

    aput-object v0, p2, v3

    const-string v0, "\u0434\u0435\u0436\u0437"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0438\u0439\u043a\u043b"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u043c\u043d\u043e\u043f"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0440\u0441\u0442\u0443"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0444\u0445\u0446\u0447"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0448\u0449\u044a"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u044c\u044e\u044f"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "\u0430\u0431\u0432\u0433"

    aput-object v0, p2, v3

    const-string v0, "\u0434\u0435\u0436\u0437"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0438\u0439\u043a\u043b"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u043c\u043d\u043e\u043f"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0440\u0441\u0442\u0443"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0444\u0445\u0446\u0447"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0448\u0449\u044a\u044b"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u044c\u044d\u044e\u044f"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "\u03b1\u03b2\u03b3"

    aput-object v0, p2, v3

    const-string v0, "\u03b4\u03b5\u03b6"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u03b7\u03b8\u03b9"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u03ba\u03bb\u03bc"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u03bd\u03be\u03bf"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u03c0\u03c1\u03c3\u03c2"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u03c4\u03c5\u03c6"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u03c7\u03c8\u03c9"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0xa

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, ".\u060c\u061f!"

    aput-object v0, p2, v1

    const-string v0, "\u0628\u200c\u067e\u200c\u062a\u200c\u062b"

    aput-object v0, p2, v3

    const-string v0, "\u0627\u200c\u0622\u200c\u0626\u200c\u0621"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u062f\u200c\u0630\u200c\u0631\u200c\u0632\u200c\u0698"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u062c\u200c\u0686\u200c\u062d\u200c\u062e"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0646\u200c\u0648\u200c\u0647\u200c\u06cc"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0641\u200c\u0642\u200c\u06a9\u200c\u06af\u200c\u0644\u200c\u0645"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "\u05d3\u05d4\u05d5"

    aput-object v0, p2, v3

    const-string v0, "\u05d0\u05d1\u05d2"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u05de\u05dd\u05e0\u05df"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u05d9\u05db\u05da\u05dc"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u05d6\u05d7\u05d8"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u05e8\u05e9\u05ea"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u05e6\u05e5\u05e7"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u05e1\u05e2\u05e4\u05e3"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u0589,\u055e\u055c"

    aput-object v0, p2, v1

    const-string v0, "\u0561\u0562\u0563\u0564"

    aput-object v0, p2, v3

    const-string v0, "\u0565\u0566\u0567\u0568"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0569\u056a\u056b\u056c\u056d"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u056e\u056f\u0570\u0571\u0572"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0573\u0574\u0575\u0576\u0577"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0578\u0579\u057a\u057b\u057c"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u057d\u057e\u057f\u0580\u0581"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0582\u0583\u0584\u0585\u0586"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u055d"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "\u10d0\u10d1\u10d2\u10d3"

    aput-object v0, p2, v3

    const-string v0, "\u10d4\u10d5\u10d6\u10d7"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u10d8\u10d9\u10da\u10db"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u10dc\u10dd\u10de\u10df"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u10e0\u10e1\u10e2\u10e3"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u10e4\u10e5\u10e6\u10e7"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u10e8\u10e9\u10ea\u10eb"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u10ec\u10ed\u10ee\u10ef\u10f0"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "\u0430\u0431\u0432\u0433\u0491"

    aput-object v0, p2, v3

    const-string v0, "\u0434\u0435\u0454\u0436\u0437"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0438\u0456\u0457\u0439\u043a\u043b"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u043c\u043d\u043e\u043f"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0440\u0441\u0442\u0443"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0444\u0445\u0446\u0447"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0448\u0449"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u044c\u044e\u044f"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u2018"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u06d4\u060c\u061f!"

    aput-object v0, p2, v1

    const-string v0, "\u0628\u200c\u067e\u200c\u062a\u200c\u0679\u200c\u062b"

    aput-object v0, p2, v3

    const-string v0, "\u0627\u200c\u0622\u200c\u0626\u200c\u0621\u200c\u06d5"

    aput-object v0, p2, v4

    const-string v0, ".\u061f\u060c!"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, ".\u061f\u060c!"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0633\u200c\u0634\u200c\u0635\u200c\u0636"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u062f\u200c\u0688\u200c\u0630\u200c\u0631\u200c\u0691\u200c\u0632\u200c\u0698"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u062c\u200c\u0686\u200c\u062d\u200c\u062e"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0646\u200c\u06ba\u200c\u0648\u200c\u06be\u200c\u06cc\u200c\u06d2"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0641\u200c\u0642\u200c\u06a9\u200c\u06af\u200c\u0644\u200c\u0645"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0637\u200c\u0638\u200c\u0639\u200c\u063a"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0xb

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "\u0430\u0431\u0432\u0433"

    aput-object v0, p2, v3

    const-string v0, "\u0434\u0453\u0435\u0436"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0437\u0455\u0438\u0458"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u043a\u043b\u0459\u043c"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u043d\u045a\u043e\u043f"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0440\u0441\u0442\u045c"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0443\u0444\u0445\u0446"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0447\u045f\u0448"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0xc

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u0e40\u0e41\u0e42"

    aput-object v1, p2, v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_1
        0x62650000 -> :sswitch_2
        0x62670000 -> :sswitch_3
        0x656c0000 -> :sswitch_5
        0x656e0000 -> :sswitch_0
        0x66610000 -> :sswitch_6
        0x68790000 -> :sswitch_8
        0x69770000 -> :sswitch_7
        0x6b610000 -> :sswitch_9
        0x6b6b0000 -> :sswitch_4
        0x6d6b0000 -> :sswitch_d
        0x6d6e0000 -> :sswitch_4
        0x72750000 -> :sswitch_4
        0x74680000 -> :sswitch_e
        0x756b0000 -> :sswitch_a
        0x75720000 -> :sswitch_c
        0x757a0000 -> :sswitch_b
    .end sparse-switch
.end method

.method private fillPhonepadSymbolCodesArray(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object p2

    :sswitch_0
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsKorMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4b

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "0x21"

    aput-object v0, p2, v1

    const-string v0, "0x3f"

    aput-object v0, p2, v3

    const-string v0, "0x2e"

    aput-object v0, p2, v4

    const-string v0, "0x2c"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "0x28"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "0x29"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "0x40"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "0x3a"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x3b"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x2f"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x2d"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "0x2661"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "0x2a"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "0x27"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "0x22"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x7e"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "0x5e"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "0x23"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "46,44,63,33"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "46,47"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "64,46"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "0x2b"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "0xd7"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "0xf7"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x3d"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x25"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0xffe6"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x26"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0x2664"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "0x2606"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "0x2667"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "0x5c"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "0x5f"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "0x3c"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "0x3e"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "0x7b"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "0x7d"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "0x5b"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "0x5d"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "0x60"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "0x7c"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "0x24"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "0x20ac"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "0xa3"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "0xa5"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "0x00B0"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "0x25CB"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "0x25CF"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "0x25A1"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "0x25A0"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "0x2662"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "0x203b"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "0x300a"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "0x300b"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, "0xa4"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, "0xa1"

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, "0xbf"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, "0x25b2"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "0x25bc"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, "0x25b6"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, "0x25c0"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "0x300a"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "0x300b"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "0x2191"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "0x2193"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "0x2190"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "0x2192"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, "0x2606"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "0x2605"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "-115"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x4b

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "0x21"

    aput-object v0, p2, v1

    const-string v0, "0x3f"

    aput-object v0, p2, v3

    const-string v0, "0x2e"

    aput-object v0, p2, v4

    const-string v0, "0x2c"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "0x28"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "0x29"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "0x40"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "0x3a"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x3b"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x2f"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x2d"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "0x26"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "0x2a"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "0x27"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "0x22"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x24"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "0x5e"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "0x23"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "46,44,63"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "46,47"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "64,46"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "0x2b"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "0xd7"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "0xf7"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x3d"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x25"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x60"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x20ac"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0xa3"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "0xa5"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "0x20a9"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "0x7e"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "0xA4"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "0x5f"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "0x5c"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "0xa1"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "0xbf"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "0x2661"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "0x2665"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "0x3c"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "0x3e"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "0x7b"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "0x7d"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "0x5b"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "0x5d"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "0x7c"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "0xb0"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "0x2022"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "0x25aa"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "0x25cb"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "0x25cf"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "0x25a1"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "0x25a0"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "0x25c7"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, "0x25c6"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, "0x2667"

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, "0x2663"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, "0x25b2"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "0x25bc"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, "0x25b6"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, "0x25c0"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "0x300a"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "0x300b"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "0x2191"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "0x2193"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "0x2190"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "0x2192"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, "0x2606"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "0x2605"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "-115"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_1
    const/16 v0, 0x1e

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "6102"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    const-string v1, "6107"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2
    const/16 v0, 0x45

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "0x61F"

    aput-object v0, p2, v3

    aput-object v2, p2, v4

    const-string v0, "0x60C"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x061B"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x7e"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    const-string v1, "46,44,45,33,63,64,47,94,126,95,58,40,41,35"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    const-string v1, "0xf7"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x3d"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "0xA4"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x24"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x20ac"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0xa3"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0xa5"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "0x20a9"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "0x5f"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "0x3c"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "0x3e"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "0x25"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    const-string v1, "0x5b"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "0x5d"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "0x7b"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "0x7d"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "0xa1"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "0xbf"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "0x60"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "0xb7"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "0xFF0C"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "0xFF1B"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "0x2661"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "0x2665"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "0x7c"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "-115"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x45

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x7e"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    const-string v1, "0xf7"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x3d"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "0xA4"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x24"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x20ac"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0xa3"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0xa5"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "0x20ad"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "0x5f"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "0x3c"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "0x3e"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "0x25"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    const-string v1, "0x5b"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "0x5d"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "0x7b"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "0x7d"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "0xa1"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "0xbf"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "0x60"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "0xb7"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "0x300a"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "0x300b"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "0x2661"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "0x2665"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "0x7c"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "-115"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x4b

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "0x3f"

    aput-object v0, p2, v1

    const-string v0, "0x21"

    aput-object v0, p2, v3

    const-string v0, "0x2c"

    aput-object v0, p2, v4

    const-string v0, "0x3a"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "0x3b"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "0x2b"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "0x28"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "0x29"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x40"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x2f"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x2a"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "0x2d"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "0x7e"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "0x23"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "0x26"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x25"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "0x5f"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "0x3d"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "46,44,45,33,63,64,47,94,126,95,58,40,41,35"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "46,47"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "64,46"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "0x22"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "0x27"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x5c"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x3c"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x3e"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x5e"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x5b"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0x5d"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "0x7c"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "0x7b"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "0x7d"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "0x60"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "0x24"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "0x20ac"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "0xa3"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "0xa5"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "0xa2"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "0x20aa"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "0xbf"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "0xa1"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "0xb7"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "0xa7"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "0xab"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "0xbb"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "0xae"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "0xa9"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "-115"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_5
    const/4 v0, 0x6

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "0x61F"

    aput-object v0, p2, v1

    aput-object v2, p2, v3

    const-string v0, "0x60C"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    const-string v1, "0x61B"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_2
        0x656e0000 -> :sswitch_0
        0x66610000 -> :sswitch_5
        0x68650000 -> :sswitch_4
        0x6b6d0000 -> :sswitch_1
        0x6c6f0000 -> :sswitch_3
    .end sparse-switch
.end method

.method private fillPhonepadSymbolLabelsArray(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object p2

    :sswitch_0
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsKorMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x39

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "!"

    aput-object v0, p2, v1

    const-string v0, "?"

    aput-object v0, p2, v3

    const-string v0, "."

    aput-object v0, p2, v4

    const-string v0, ","

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "("

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, ")"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "@"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, ":"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, ";"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "/"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "-"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u2661"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "*"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\'"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\""

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "~"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "^"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "#"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, ".,?!"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "./"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "@."

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "+"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u00d7"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u00f7"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "="

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "%"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u20a9"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "&"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u2664"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u2606"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u2667"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\\"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "_"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "<"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, ">"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "{"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "}"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "["

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "]"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\'"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "|"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "$"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u20ac"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u00a3"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\uffe5"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u00b0"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u25cb"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u25cf"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u25a1"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "\u25a0"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "\u25c7"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "\u203b"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "\u300a"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "\u300b"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, "\u00a4"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, "\u00a1"

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, "\u00bf"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x4b

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "!"

    aput-object v0, p2, v1

    const-string v0, "?"

    aput-object v0, p2, v3

    const-string v0, "."

    aput-object v0, p2, v4

    const-string v0, ","

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "("

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, ")"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "@"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, ":"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, ";"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "/"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "-"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "&"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "*"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\'"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\""

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "$"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "^"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "#"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, ".,?"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "./"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "@."

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "+"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u00d7"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u00f7"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "="

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "%"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "`"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u20ac"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u00a3"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u00a5"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u20a9"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "~"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u00a4"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "_"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "\\"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "\u00a1"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "\u00bf"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u2661"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u2665"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "<"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, ">"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "{"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "}"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "["

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "]"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "|"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u00b0"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u2022"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u25aa"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "\u25cb"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "\u25cf"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "\u25a1"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "\u25a0"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "\u25c7"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, "\u25c6"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, "\u2667"

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, "\u2663"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, "\u25b2"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "\u25bc"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, "\u25b6"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, "\u25c0"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "\u300a"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "\u300b"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "\u2191"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "\u2193"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "\u2190"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "\u2192"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, "\u2606"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "\u2605"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ":-)"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ";-)"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ":-D"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ":-("

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ":\u2019("

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ":O"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_1
    const/16 v0, 0x1e

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u17d6"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u17db"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2
    const/16 v0, 0x4b

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v0, "\u061f"

    aput-object v0, p2, v3

    aput-object v2, p2, v4

    const-string v0, "\u060c"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u061b"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    const-string v1, "~"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    const-string v1, ".,-"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u00f7"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "="

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u00a4"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "$"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u20ac"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u00a3"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u00a5"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u20a9"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "_"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "<"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, ">"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "%"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    const-string v1, "["

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "]"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "{"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "}"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u00a1"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u00bf"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "`"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u00b7"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\uff0c"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\uff1b"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u2661"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u2665"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "|"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, ":-)"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, ":-("

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, ";-)"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, ":-P"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "=-O"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, ":-*"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, ":O"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, "B-)"

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, ":-$"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, ":-!"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, ":-["

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, "O:-)"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, ":-\\"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ":\'("

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ":-X"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ":-D"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "o_O"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ":-/"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "x-("

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ":-I"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "<3"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ":-V"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "XD"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ":-Q"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ":-@"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ":-C"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ":-O"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x4b

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    const-string v1, "~"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u00f7"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "="

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u00a4"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "$"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u20ac"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u00a3"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u00a5"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u20ad"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "_"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "<"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, ">"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "%"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    const-string v1, "["

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "]"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "{"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "}"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u00a1"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u00bf"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "`"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u00b7"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u300a"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u300b"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u2661"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u2665"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "|"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, ":-)"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, ":-("

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, ";-)"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, ":-P"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "=-O"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, ":-*"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, ":O"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, "B-)"

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, ":-$"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, ":-!"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, ":-["

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, "O:-)"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, ":-\\"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ":\'("

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ":-X"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ":-D"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "o_O"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ":-/"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "x-("

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ":-I"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "<3"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ":-V"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "XD"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ":-Q"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ":-@"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ":-C"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ":-O"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x4b

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "?"

    aput-object v0, p2, v1

    const-string v0, "!"

    aput-object v0, p2, v3

    const-string v0, ","

    aput-object v0, p2, v4

    const-string v0, ":"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, ";"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "+"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "("

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, ")"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "@"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "/"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "*"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "-"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "~"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "#"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "&"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "%"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "_"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "="

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, ".,-"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "./"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "@."

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\""

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\'"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\\"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "<"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, ">"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "^"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "["

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "]"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "|"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "{"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "}"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "`"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "$"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "\u20ac"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "\u00a3"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "\u00a5"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u00a2"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u20aa"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u00bf"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u00a1"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u00b7"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u00a7"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u00ab"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u00bb"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u00ae"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u00a9"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, ":-)"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, ":-("

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, ";-)"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, ":-P"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "=-O"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, ":-*"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, ":O"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, "B-)"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, ":-$"

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, ":-!"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, ":-["

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "O:-)"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, ":-\\"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, ":\'("

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ":-X"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ":-D"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "o_O"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ":-/"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "x-("

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ":-I"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, "<3"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ":-V"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ":-C"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "XD"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ":-Q"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ":-@"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ":-C"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ":-O"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_5
    const/4 v0, 0x6

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u061f"

    aput-object v0, p2, v1

    aput-object v2, p2, v3

    const-string v0, "\u060c"

    aput-object v0, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u061b"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_2
        0x656e0000 -> :sswitch_0
        0x66610000 -> :sswitch_5
        0x68650000 -> :sswitch_4
        0x6b6d0000 -> :sswitch_1
        0x6c6f0000 -> :sswitch_3
    .end sparse-switch
.end method

.method private fillQwertyNormalCodesArray(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object p2

    :sswitch_0
    const/16 v0, 0x1a

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "113"

    aput-object v0, p2, v1

    const-string v0, "119"

    aput-object v0, p2, v3

    const-string v0, "101"

    aput-object v0, p2, v4

    const-string v0, "114"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "116"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "121"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "117"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "105"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "111"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "112"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "97"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "115"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "100"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "102"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "103"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "104"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "106"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "107"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "108"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "122"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "120"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "99"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "118"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "98"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "110"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "109"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsKorMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "113"

    aput-object v0, p2, v1

    const-string v0, "119"

    aput-object v0, p2, v3

    const-string v0, "101"

    aput-object v0, p2, v4

    const-string v0, "114"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "116"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "121"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "117"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "105"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "111"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "112"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "97"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "115"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "100"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "102"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "103"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "104"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "106"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "107"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "108"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "122"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "120"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "99"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "118"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "98"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "110"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "109"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1a

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "12610"

    aput-object v0, p2, v1

    const-string v0, "12616"

    aput-object v0, p2, v3

    const-string v0, "12599"

    aput-object v0, p2, v4

    const-string v0, "12593"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "12613"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "12635"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "12629"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "12625"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "12624"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "12628"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "12609"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "12596"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "12615"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "12601"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "12622"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "12631"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "12627"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "12623"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "12643"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "12619"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "12620"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "12618"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "12621"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "12640"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "12636"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "12641"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x1a

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "0x1107"

    aput-object v0, p2, v1

    const-string v0, "0x110c"

    aput-object v0, p2, v3

    const-string v0, "0x1103"

    aput-object v0, p2, v4

    const-string v0, "0x1100"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "0x1109"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "0x116d"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "0x1167"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "0x1163"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x1162"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x1166"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x1106"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "0x1102"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "0x110b"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "0x1105"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "0x1112"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x1169"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "0x1165"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "0x1161"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "0x1175"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "0x110f"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "0x1110"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "0x110e"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "0x1111"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x1172"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x116e"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x1173"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2
    const/16 v0, 0x20

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "1081"

    aput-object v0, p2, v1

    const-string v0, "1094"

    aput-object v0, p2, v3

    const-string v0, "1091"

    aput-object v0, p2, v4

    const-string v0, "1082"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "1077"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "1085"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1075"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1096"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1118"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1079"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1092"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "1099"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "1074"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "1072"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "1087"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "1088"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "1086"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "1083"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "1076"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "1103"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "1095"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "1089"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "1084"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "1110"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "1090"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "1100"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "1093"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "8217"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "1078"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "1101"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "1073"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "1102"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "241"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x1e

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "252"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "245"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "246"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "228"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x1d

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x00e5"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x00e6"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0x00f8"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x1a

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "122"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    const-string v1, "121"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x1a

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "122"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    const-string v1, "121"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x1d

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "122"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    const-string v1, "121"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "252"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "246"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "228"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x1f

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "1113"

    aput-object v0, p2, v1

    const-string v0, "1114"

    aput-object v0, p2, v3

    const-string v0, "1077"

    aput-object v0, p2, v4

    const-string v0, "1088"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "1090"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "1109"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1091"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1080"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1086"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1087"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1072"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "1089"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "1076"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "1092"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "1075"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "1093"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "1112"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "1082"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "1083"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "1079"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "1119"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "1094"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "1074"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "1073"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "1085"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "1084"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "1096"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "1107"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "1095"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "1116"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "1078"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x20

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "1081"

    aput-object v0, p2, v1

    const-string v0, "1094"

    aput-object v0, p2, v3

    const-string v0, "1091"

    aput-object v0, p2, v4

    const-string v0, "1082"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "1077"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "1085"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1075"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1096"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1097"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1079"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1092"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "1110"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "1074"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "1072"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "1087"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "1088"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "1086"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "1083"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "1076"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "1103"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "1095"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "1089"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "1084"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "1080"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "1090"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "1100"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "1093"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "1111"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "1078"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "1108"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "1073"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "1102"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x26

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "0x1786"

    aput-object v0, p2, v1

    const-string v0, "0x17B9"

    aput-object v0, p2, v3

    const-string v0, "0x17C1"

    aput-object v0, p2, v4

    const-string v0, "0x179A"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "0x178F"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "0x1799"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "0x17BB"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "0x17B7"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x17C4"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x1795"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x17B6"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "0x179F"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "0x178A"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "0x1790"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "0x1784"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x17A0"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "0x17D2"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "0x1780"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "0x179B"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "0x178B"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "0x1781"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "0x1785"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "0x179C"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x1794"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x1793"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x1798"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x17BE"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x17D7"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0x17CD"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "0x17D0"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "0x17CF"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "0x17CC"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "0x17CE"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "0x17CB"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "0x17C9"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "0x17CA"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "0x17A5"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "0x17B2"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0x2a

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "1081"

    aput-object v0, p2, v1

    const-string v0, "1094"

    aput-object v0, p2, v3

    const-string v0, "1091"

    aput-object v0, p2, v4

    const-string v0, "1082"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "1077"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "1085"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1075"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1096"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1097"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1079"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1092"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "1099"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "1074"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "1072"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "1087"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "1088"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "1086"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "1083"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "1076"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "1103"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "1095"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "1089"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "1084"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "1080"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "1090"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "1100"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "1093"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "1098"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "1078"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "1101"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "1073"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "1102"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "1105"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "601"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "1110"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "1187"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "1171"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "1199"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "1201"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "1179"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "1257"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "1211"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0x1f

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "1091"

    aput-object v0, p2, v1

    const-string v0, "1077"

    aput-object v0, p2, v3

    const-string v0, "1080"

    aput-object v0, p2, v4

    const-string v0, "1096"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "1097"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "1082"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1089"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1076"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1079"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1094"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1100"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "1103"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "1072"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "1086"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "1078"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "1075"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "1090"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "1085"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "1074"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "1102"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "1081"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "1098"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "1101"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "1092"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "1093"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "1087"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "1073"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "1084"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "1095"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "1088"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "1083"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x22

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "1081"

    aput-object v0, p2, v1

    const-string v0, "1094"

    aput-object v0, p2, v3

    const-string v0, "1091"

    aput-object v0, p2, v4

    const-string v0, "1199"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "1082"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "1077"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1085"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1075"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1096"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1097"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1092"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "1099"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "1074"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "1072"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "1087"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "1088"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "1086"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "1257"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "1083"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "1103"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "1095"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "1089"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "1084"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "1080"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "1090"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "1100"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "1079"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "1093"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "1076"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "1078"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "1101"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "1073"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "1102"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "1187"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0x2c

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "3654"

    aput-object v0, p2, v1

    const-string v0, "3652"

    aput-object v0, p2, v3

    const-string v0, "3635"

    aput-object v0, p2, v4

    const-string v0, "3614"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "3632"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "3633"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "3637"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "3619"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "3609"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "3618"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "3615"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "3627"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "3585"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "3604"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "3648"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "3657"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "3656"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "3634"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "3626"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "3612"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "3611"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "3649"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "3629"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "3636"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "3639"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "3607"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "3610"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "3621"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "3623"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "3591"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "3617"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "3651"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "3613"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "3653"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "3587"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "3616"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "3606"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "3640"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "3638"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "3588"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "3605"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "3592"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "3586"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "3594"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_10
    const/16 v0, 0x1f

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "1081"

    aput-object v0, p2, v1

    const-string v0, "1094"

    aput-object v0, p2, v3

    const-string v0, "1091"

    aput-object v0, p2, v4

    const-string v0, "1082"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "1077"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "1085"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1075"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1096"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1097"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1079"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1092"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "1099"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "1074"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "1072"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "1087"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "1088"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "1086"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "1083"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "1076"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "1103"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "1095"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "1089"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "1084"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "1080"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "1090"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "1100"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "1093"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "1078"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "1101"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "1073"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "1102"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0x21

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "1092"

    aput-object v0, p2, v1

    const-string v0, "1094"

    aput-object v0, p2, v3

    const-string v0, "1091"

    aput-object v0, p2, v4

    const-string v0, "1078"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "1101"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "1085"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1075"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1096"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1199"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1079"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1081"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "1099"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "1073"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "1257"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "1072"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "1093"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "1088"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "1086"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "1083"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "1103"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "1095"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "1105"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "1089"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "1084"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "1080"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "1090"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "1082"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "1098"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "1076"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "1087"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "1100"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "1074"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "1102"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_12
    const/16 v0, 0x21

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "1081"

    aput-object v0, p2, v1

    const-string v0, "1179"

    aput-object v0, p2, v3

    const-string v0, "1091"

    aput-object v0, p2, v4

    const-string v0, "1082"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "1077"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "1085"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1075"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1096"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1203"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1079"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1092"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "1207"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "1074"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "1072"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "1087"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "1088"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "1086"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "1083"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "1076"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "1103"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "1095"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "1089"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "1084"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "1080"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "1090"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "1251"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "1093"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "1098"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "1078"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "1101"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "1073"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "1102"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "1105"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_13
    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "228"

    aput-object v0, p2, v1

    const-string v0, "119"

    aput-object v0, p2, v3

    const-string v0, "101"

    aput-object v0, p2, v4

    const-string v0, "114"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "116"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "121"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "117"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "105"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "111"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "112"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "97"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "115"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "100"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "102"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "103"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "104"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "106"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "107"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "108"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "122"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "252"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "231"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "253"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "98"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "110"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "109"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "382"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_14
    const/16 v0, 0x20

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "113"

    aput-object v0, p2, v1

    const-string v0, "119"

    aput-object v0, p2, v3

    const-string v0, "101"

    aput-object v0, p2, v4

    const-string v0, "114"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "116"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "121"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "117"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "0x131"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "111"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "112"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "97"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "115"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "100"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "102"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "103"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "104"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "106"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "107"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "108"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "122"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "120"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "99"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "118"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "98"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "110"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "109"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x11f"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0xfc"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0x15f"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "105"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "0xf6"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "0xe7"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_15
    const/16 v0, 0x20

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "1590"

    aput-object v0, p2, v1

    const-string v0, "1589"

    aput-object v0, p2, v3

    const-string v0, "1579"

    aput-object v0, p2, v4

    const-string v0, "1602"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "1601"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "1594"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1593"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1607"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1582"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1581"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1588"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "1587"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "1610"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "1576"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "1604"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "1575"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "1578"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "1606"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "1605"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "1584"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "1569"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "1572"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "1585"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "1609"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "1577"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "1608"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "1580"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "1603"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "1591"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "1586"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "1592"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "1583"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_16
    const/16 v0, 0x20

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "113"

    aput-object v0, p2, v1

    const-string v0, "252"

    aput-object v0, p2, v3

    const-string v0, "101"

    aput-object v0, p2, v4

    const-string v0, "114"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "116"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "121"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "117"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "105"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "111"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "112"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "97"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "115"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "100"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "102"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "103"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "104"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "106"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "107"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "108"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "122"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "120"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "99"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "118"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "98"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "110"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "109"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "246"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "287"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "305"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "601"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "231"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "351"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_17
    const/16 v0, 0x1d

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x00e5"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x00f8"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0x00e6"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_18
    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "962"

    aput-object v0, p2, v1

    const-string v0, "949"

    aput-object v0, p2, v3

    const-string v0, "961"

    aput-object v0, p2, v4

    const-string v0, "964"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "965"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "952"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "953"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "959"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "960"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "945"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "963"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "948"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "966"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "947"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "951"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "958"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "954"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "955"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "-62"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "950"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "967"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "968"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "969"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "946"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "957"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "956"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "59"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_19
    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "1511"

    aput-object v0, p2, v1

    const-string v0, "1512"

    aput-object v0, p2, v3

    const-string v0, "1488"

    aput-object v0, p2, v4

    const-string v0, "1496"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "1493"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "1503"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1501"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1508"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1513"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1491"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1490"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "1499"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "1506"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "1497"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "1495"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "1500"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "1498"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "1507"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "1494"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "1505"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "1489"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "1492"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "1504"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "1502"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "1510"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "1514"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "1509"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_1a
    const/16 v0, 0x24

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "1383"

    aput-object v0, p2, v1

    const-string v0, "1385"

    aput-object v0, p2, v3

    const-string v0, "1411"

    aput-object v0, p2, v4

    const-string v0, "1393"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "1403"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "1415"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1408"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1401"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1395"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1386"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1412"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "1400"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "1381"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "1404"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "1407"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "1384"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "1387"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "1413"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "1402"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "1389"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "1377"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "1405"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "1380"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "1414"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "1379"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "1392"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "1397"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "1391"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "1388"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "1382"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "1394"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "1409"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "1406"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "1378"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "1398"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "1396"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_1b
    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1c

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x00e7"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x00eb"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x1c

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x00eb"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x00e7"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_1c
    const/16 v0, 0x1d

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x00e5"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x00f6"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0x00e4"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_1d
    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "97"

    aput-object v0, p2, v1

    const-string v0, "122"

    aput-object v0, p2, v3

    const-string v0, "101"

    aput-object v0, p2, v4

    const-string v0, "114"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "116"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "121"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "117"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "105"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "111"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "112"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "113"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "115"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "100"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "102"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "103"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "104"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "106"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "107"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "108"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "119"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "120"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "99"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "118"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "98"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "110"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "-770"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "109"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_1e
    const/16 v0, 0x1d

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x00f0"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x00e6"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0x00fe"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_1f
    const/16 v0, 0x23

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x0105"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x010D"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0x0119"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "0x0117"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "0x012F"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "0x0161"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "0x0173"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "0x016B"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "0x017E"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_20
    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "-62"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_21
    const/16 v0, 0x1a

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "4325"

    aput-object v0, p2, v1

    const-string v0, "4332"

    aput-object v0, p2, v3

    const-string v0, "4308"

    aput-object v0, p2, v4

    const-string v0, "4320"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "4322"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "4327"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "4323"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "4312"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "4317"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "4318"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "4304"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "4321"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "4307"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "4324"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "4306"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "4336"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "4335"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "4313"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "4314"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "4310"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "4334"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "4330"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "4309"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "4305"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "4316"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "4315"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_22
    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "1602"

    aput-object v0, p2, v1

    const-string v0, "1608"

    aput-object v0, p2, v3

    const-string v0, "1593"

    aput-object v0, p2, v4

    const-string v0, "1585"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "1578"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "1746"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1574"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1740"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1729"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1662"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1575"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "1587"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "1583"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "1601"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "1711"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "1726"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "1580"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "1582"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "1705"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "1586"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "1589"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "1670"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "1591"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "1576"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "1606"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "1605"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "1604"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_23
    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "1589"

    aput-object v0, p2, v1

    const-string v0, "1579"

    aput-object v0, p2, v3

    const-string v0, "1602"

    aput-object v0, p2, v4

    const-string v0, "1601"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "1593"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "1607"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "1582"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "1581"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "1580"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "1670"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "1588"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "1587"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "1740"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "1576"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "1604"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "1575"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "1578"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "1606"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "1605"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "1591"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "1586"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "1585"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "1583"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "1608"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "1705"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "1711"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "1662"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_24
    const/16 v0, 0x1a

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "113"

    aput-object v0, p2, v1

    const-string v0, "101"

    aput-object v0, p2, v3

    const-string v0, "114"

    aput-object v0, p2, v4

    const-string v0, "116"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "121"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "117"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "105"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "111"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "112"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x2018"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "97"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "115"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "100"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "102"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "103"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "104"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "106"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "107"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "108"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "122"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "120"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "99"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "118"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "98"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "110"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "109"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_25
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "-500"

    aput-object v0, p2, v1

    const-string v0, "2309"

    aput-object v0, p2, v3

    const-string v0, "2310"

    aput-object v0, p2, v4

    const-string v0, "2311"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "2312"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "2325"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "2326"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "2327"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "2328"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "2396"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "2313"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "2314"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "2319"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "2320"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "2323"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "2330"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "2331"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "2332"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "2333"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "2334"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "2324"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "2309,2306"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "2309,2307"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "2315"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "2321"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "2335"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "2336"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "2337"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "2338"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "2339"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "2340"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "2341"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "2342"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "2343"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "2344"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "2346"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "2347"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "2348"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "2349"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "2350"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "2351"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "2352"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "2354"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "2357"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "2358"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "2359"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "2360"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "2361"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "-102"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "2404"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "2404"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_26
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    const-string v1, "2396"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    const-string v1, "46"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "46"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_27
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "-500"

    aput-object v0, p2, v1

    const-string v0, "3205"

    aput-object v0, p2, v3

    const-string v0, "3206"

    aput-object v0, p2, v4

    const-string v0, "3207"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "3208"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "3221"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "3222"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "3223"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "3224"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "3225"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "3209"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "3210"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "3211"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "3214"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "3215"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "3226"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "3227"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "3228"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "3229"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "3230"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "3216"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "3218"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "3219"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "3220"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "3205,3202"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "3231"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "3232"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "3233"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "3234"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "3235"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "3236"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "3237"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "3238"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "3239"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "3240"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "3242"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "3243"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "3244"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "3245"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "3246"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "3247"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "3248"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "3250"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "3253"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "3254"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "3255"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "3256"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "3257"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "-102"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "46"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "46"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_28
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "-500"

    aput-object v0, p2, v1

    const-string v0, "2437"

    aput-object v0, p2, v3

    const-string v0, "2438"

    aput-object v0, p2, v4

    const-string v0, "2439"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "2440"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "2453"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "2454"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "2455"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "2456"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "2457"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "2441"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "2442"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "2443"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "2447"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "2448"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "2458"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "2459"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "2460"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "2461"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "2462"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "2451"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "2452"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "2437,2434"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "2437,2435"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "2437,2433"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "2463"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "2464"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "2465"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "2466"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "2467"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "2468"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "2469"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "2470"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "2471"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "2472"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "2474"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "2475"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "2476"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "2477"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "2478"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "2479"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "2480"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "2482"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "2476"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "2486"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "2487"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "2488"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "2489"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "-102"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "2404"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "2404"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_29
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    const-string v1, "2544"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    const-string v1, "2545"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    const-string v1, "2404"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "2404"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2a
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    const-string v1, "46"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "46"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2b
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "-500"

    aput-object v0, p2, v1

    const-string v0, "3077"

    aput-object v0, p2, v3

    const-string v0, "3078"

    aput-object v0, p2, v4

    const-string v0, "3079"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "3080"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "3093"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "3094"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "3095"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "3096"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "3097"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "3081"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "3082"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "3083"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "3086"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "3087"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "3098"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "3099"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "3100"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "3101"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "3102"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "3088"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "3090"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "3091"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "3092"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "3077,3074"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "3103"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "3104"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "3105"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "3106"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "3107"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "3108"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "3109"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "3110"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "3111"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "3112"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "3114"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "3115"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "3116"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "3117"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "3118"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "3119"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "3120"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "3122"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "3125"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "3126"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "3127"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "3128"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "3129"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "-102"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "46"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "46"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2c
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "-500"

    aput-object v0, p2, v1

    const-string v0, "3461"

    aput-object v0, p2, v3

    const-string v0, "3462"

    aput-object v0, p2, v4

    const-string v0, "3463"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "3464"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "3482"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "3483"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "3484"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "3485"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "3486"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "3465"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "3466"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "3467"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "3468"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "3473"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "3488"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "3489"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "3490"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "3491"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "3492"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "3474"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "3476"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "3477"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "3478"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "3461,3458"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "3495"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "3496"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "3497"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "3498"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "3499"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "3501"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "3502"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "3503"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "3504"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "3505"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "3508"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "3509"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "3510"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "3511"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "3512"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "3514"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "3515"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "3517"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "3520"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "3521"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "3522"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "3523"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "3524"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "-102"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "46"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "46"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2d
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "-500"

    aput-object v0, p2, v1

    const-string v0, "0x0B05"

    aput-object v0, p2, v3

    const-string v0, "0x0B06"

    aput-object v0, p2, v4

    const-string v0, "0x0B07"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "0x0B08"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "0x0B15"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "0x0B16"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "0x0B17"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x0B18"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x0B19"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x0B09"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "0x0B0A"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "0x0B0B"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "0x0B0F"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "0x0B10"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x0B1A"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "0x0B1B"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "0x0B1C"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "0x0B1D"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "0x0B1E"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "0x0B13"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "0x0B14"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "2821,2818"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "2821,2819"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "2821,2817"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x0B1F"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x0B20"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x0B21"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0x0B22"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "0x0B23"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "0x0B24"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "0x0B25"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "0x0B26"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "0x0B27"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "0x0B28"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "0x0B2A"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "0x0B2B"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "0x0B2C"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "0x0B2D"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "0x0B2E"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "0x0B2F"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "0x0B30"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "0x0B33"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "0x0B32"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "0x0B36"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "0x0B37"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "0x0B38"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "0x0B39"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "-102"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "2404"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "2404"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2e
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "-500"

    aput-object v0, p2, v1

    const-string v0, "3333"

    aput-object v0, p2, v3

    const-string v0, "3334"

    aput-object v0, p2, v4

    const-string v0, "3335"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "3336"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "3349"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "3350"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "3351"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "3352"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "3353"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "3337"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "3338"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "3339"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "3342"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "3343"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "3354"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "3355"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "3356"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "3357"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "3358"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "3344"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "3346"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "3347"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "3348"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "3333,3330"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "3359"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "3360"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "3361"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "3362"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "3363"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "3364"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "3365"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "3366"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "3367"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "3368"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "3370"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "3371"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "3372"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "3373"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "3374"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "3375"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "3376"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "3378"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "3381"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "3382"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "3383"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "3384"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "3385"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "-102"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "46"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "46"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2f
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "-500"

    aput-object v0, p2, v1

    const-string v0, "2693"

    aput-object v0, p2, v3

    const-string v0, "2694"

    aput-object v0, p2, v4

    const-string v0, "2695"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "2696"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "2709"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "2710"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "2711"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "2712"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "2713"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "2697"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "2698"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "2703"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "2704"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "2707"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "2714"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "2715"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "2716"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "2717"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "2718"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "2708"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "2693,2690"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "2693,2691"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "2784"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "2705"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "2719"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "2720"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "2721"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "2722"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "2723"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "2724"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "2725"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "2726"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "2727"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "2728"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "2730"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "2731"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "2732"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "2733"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "2734"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "2735"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "2736"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "2738"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "2741"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "2742"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "2743"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "2744"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "2745"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "-102"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "46"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "46"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_30
    const/16 v0, 0x1a

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_31
    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1a

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "81"

    aput-object v0, p2, v1

    const-string v0, "87"

    aput-object v0, p2, v3

    const-string v0, "69"

    aput-object v0, p2, v4

    const-string v0, "82"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "84"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "89"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "85"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "73"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "79"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "80"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "65"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "83"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "68"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "70"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "71"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "72"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "74"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "75"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "76"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "0xFF0C"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "88"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "67"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "86"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "66"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "78"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "77"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x1a

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_32
    const/16 v0, 0x1a

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_33
    const/16 v0, 0x1a

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_34
    const/16 v0, 0x2d

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "3771"

    aput-object v0, p2, v1

    const-string v0, "3780"

    aput-object v0, p2, v3

    const-string v0, "3763"

    aput-object v0, p2, v4

    const-string v0, "3742"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "3760"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "3764"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "3765"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "3758"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "3737"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "3725"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "3761"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "3755"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "3713"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "3732"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "3776"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "3785"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "3784"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "3762"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "3754"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "3740"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "3739"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "3777"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "3757"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "3766"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "3767"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "3735"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "3738"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "3749"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "3751"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "3719"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "3745"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "3779"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "3741"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "3746"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "3743"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "3778"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "3734"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "3768"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "3769"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "3716"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "3733"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "3720"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "3714"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "3722"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "3789"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_35
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    const-string v1, "2329"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_36
    const/16 v0, 0x1e

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "4102"

    aput-object v0, p2, v1

    const-string v0, "4112"

    aput-object v0, p2, v3

    const-string v0, "4116"

    aput-object v0, p2, v4

    const-string v0, "4121"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "4129"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "4117"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "4096"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "4100"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "4126"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "4101"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "4145"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "4155"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "4141"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "4154"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "4157"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "4151"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "4156"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "4143"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "4144"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "4118"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "4113"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "4097"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "4124"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "4120"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "4106,4105"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "4140,4139"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "4123"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "4152"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "4122"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "4153"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_37
    const/16 v0, 0x1e

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "4102,4199,4198"

    aput-object v0, p2, v1

    const-string v0, "4112,4209,4210,4246"

    aput-object v0, p2, v3

    const-string v0, "4116,4239,4215"

    aput-object v0, p2, v4

    const-string v0, "4121,4220"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "4129"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "4117,4216"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "4096,4192"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "4100"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "4126,4230"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "4101,4197"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "4145"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "4154,4221"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "4141,4235"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "4153,4186"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "4156,4234"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "4151,4244,4245"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "4155"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "4143,4147"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "4144,4148"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "4118,4217"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "4113,4211,4212"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "4097,4193"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "4124,4229"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "4120,4219,4243"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "4106,4105"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "4140,4139"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "4123,4240"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "4152"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "4122"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "-988"

    aput-object v1, p2, v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_15
        0x61730000 -> :sswitch_29
        0x617a0000 -> :sswitch_16
        0x62650000 -> :sswitch_2
        0x62670000 -> :sswitch_d
        0x626e0000 -> :sswitch_28
        0x64610000 -> :sswitch_5
        0x64650000 -> :sswitch_6
        0x64654445 -> :sswitch_8
        0x656c0000 -> :sswitch_18
        0x656e0000 -> :sswitch_0
        0x65730000 -> :sswitch_3
        0x65740000 -> :sswitch_4
        0x66610000 -> :sswitch_23
        0x66690000 -> :sswitch_1c
        0x66724652 -> :sswitch_1d
        0x67750000 -> :sswitch_2f
        0x68690000 -> :sswitch_25
        0x68790000 -> :sswitch_1a
        0x69730000 -> :sswitch_1e
        0x69770000 -> :sswitch_19
        0x6a610000 -> :sswitch_32
        0x6b610000 -> :sswitch_21
        0x6b6b0000 -> :sswitch_c
        0x6b6d0000 -> :sswitch_b
        0x6b6e0000 -> :sswitch_27
        0x6b6f0000 -> :sswitch_1
        0x6b790000 -> :sswitch_e
        0x6c6f0000 -> :sswitch_34
        0x6c740000 -> :sswitch_1f
        0x6c760000 -> :sswitch_20
        0x6d6b0000 -> :sswitch_9
        0x6d6c0000 -> :sswitch_2e
        0x6d6e0000 -> :sswitch_11
        0x6d720000 -> :sswitch_26
        0x6d794d4d -> :sswitch_36
        0x6e620000 -> :sswitch_17
        0x6e650000 -> :sswitch_35
        0x6f720000 -> :sswitch_2d
        0x72750000 -> :sswitch_10
        0x73690000 -> :sswitch_2c
        0x736c0000 -> :sswitch_7
        0x73710000 -> :sswitch_1b
        0x74610000 -> :sswitch_2a
        0x74650000 -> :sswitch_2b
        0x74670000 -> :sswitch_12
        0x74680000 -> :sswitch_f
        0x746b0000 -> :sswitch_13
        0x74720000 -> :sswitch_14
        0x756b0000 -> :sswitch_a
        0x75720000 -> :sswitch_22
        0x757a0000 -> :sswitch_24
        0x76690000 -> :sswitch_33
        0x7a314d4d -> :sswitch_37
        0x7a680000 -> :sswitch_30
        0x7a68484b -> :sswitch_31
    .end sparse-switch
.end method

.method private fillQwertyNormalLabelsArray(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object p2

    :sswitch_0
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "q"

    aput-object v0, p2, v1

    const-string v0, "w"

    aput-object v0, p2, v3

    const-string v0, "e"

    aput-object v0, p2, v4

    const-string v0, "r"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "t"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "y"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "u"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "i"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "o"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "p"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "a"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "s"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "d"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "f"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "g"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "h"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "j"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "k"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "l"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "z"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "x"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "c"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "v"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "b"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "n"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "m"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    aput-object v2, p2, v0

    const/16 v0, 0x3d

    aput-object v2, p2, v0

    const/16 v0, 0x3e

    const-string v1, "\u00e8\u00e9\u00ea\u00eb\u0113\u0117\u0119\u011b\u0115\u0259"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "\u0155\u0159"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "\u00fe\u0165\u021b\u0163"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "\u00fd"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "\u00f9\u00fa\u00fb\u00fc\u016b\u016f\u0171\u0173"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, "\u00ec\u00ed\u00ee\u00ef\u012b\u012f\u0131"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "\u00f2\u00f3\u00f4\u00f5\u00f6\u00f8\u0151\u0153"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    aput-object v2, p2, v0

    const/16 v0, 0x46

    const-string v1, "\u00e0\u00e1\u00e2\u00e3\u00e4\u00e5\u00e6\u0101\u0103\u0105"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, "\u00df\u00a7\u015b\u0161\u015f"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "\u010f\u0111"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    aput-object v2, p2, v0

    const/16 v0, 0x4a

    const-string v1, "\u0123\u011f"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    aput-object v2, p2, v0

    const/16 v0, 0x4c

    aput-object v2, p2, v0

    const/16 v0, 0x4d

    const-string v1, "\u0137"

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, "\u013a\u013c\u013e\u0142"

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, "\u017a\u017c\u017e"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    aput-object v2, p2, v0

    const/16 v0, 0x51

    const-string v1, "\u00e7\u0107\u010d"

    aput-object v1, p2, v0

    const/16 v0, 0x52

    aput-object v2, p2, v0

    const/16 v0, 0x53

    aput-object v2, p2, v0

    const/16 v0, 0x54

    const-string v1, "\u00f1\u0144\u0146\u0148"

    aput-object v1, p2, v0

    const/16 v0, 0x55

    aput-object v2, p2, v0

    const/16 v0, 0x56

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_1
    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u3142"

    aput-object v0, p2, v1

    const-string v0, "\u3148"

    aput-object v0, p2, v3

    const-string v0, "\u3137"

    aput-object v0, p2, v4

    const-string v0, "\u3131"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u3145"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u315b"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u3155"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u3151"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u3150"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u3154"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u3141"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u3134"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u3147"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u3139"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u314e"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u3157"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u3153"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u314f"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u3163"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u314b"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u314c"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u314a"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u314d"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u3160"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u315c"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u3161"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, "\u3143"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "\u3149"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "\u3138"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "\u3132"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "\u3146"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "\u3152"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, "\u3156"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u3142"

    aput-object v0, p2, v1

    const-string v0, "\u3148"

    aput-object v0, p2, v3

    const-string v0, "\u3137"

    aput-object v0, p2, v4

    const-string v0, "\u3131"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u3145"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u315b"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u3155"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u3151"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u3150"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u3154"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u3141"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u3134"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u3147"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u3139"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u314e"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u3157"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u3153"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u314f"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u3163"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u314b"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u314c"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u314a"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u314d"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u3160"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u315c"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u3161"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, "\u1108"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "\u110d"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "\u1104"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "\u1101"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "\u110a"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "\u1164"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, "\u1168"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2
    const/16 v0, 0x5c

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u0439"

    aput-object v0, p2, v1

    const-string v0, "\u0446"

    aput-object v0, p2, v3

    const-string v0, "\u0443"

    aput-object v0, p2, v4

    const-string v0, "\u043a"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0435"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u043d"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0433"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0448"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u045e"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0437"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0444"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u044b"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u0432"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0430"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u043f"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0440"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u043e"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u043b"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u0434"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u044f"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0447"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0441"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u043c"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0456"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0442"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u044c"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0445"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u2019"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0436"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u044d"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u0431"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u044e"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "\u0451"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x57

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x58

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x59

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x5a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x5b

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x29

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u00f1"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x29

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u00fc"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u00f5"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u00f6"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u00e4"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x29

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u00e5"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u00e6"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u00f8"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "z"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    const-string v1, "y"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    aput-object v2, p2, v0

    const/16 v0, 0x3d

    aput-object v2, p2, v0

    const/16 v0, 0x3e

    aput-object v2, p2, v0

    const/16 v0, 0x3f

    aput-object v2, p2, v0

    const/16 v0, 0x40

    aput-object v2, p2, v0

    const/16 v0, 0x41

    const-string v1, "\u017a\u017c\u017e"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    aput-object v2, p2, v0

    const/16 v0, 0x43

    aput-object v2, p2, v0

    const/16 v0, 0x44

    aput-object v2, p2, v0

    const/16 v0, 0x45

    aput-object v2, p2, v0

    const/16 v0, 0x46

    aput-object v2, p2, v0

    const/16 v0, 0x47

    aput-object v2, p2, v0

    const/16 v0, 0x48

    aput-object v2, p2, v0

    const/16 v0, 0x49

    aput-object v2, p2, v0

    const/16 v0, 0x4a

    aput-object v2, p2, v0

    const/16 v0, 0x4b

    aput-object v2, p2, v0

    const/16 v0, 0x4c

    aput-object v2, p2, v0

    const/16 v0, 0x4d

    aput-object v2, p2, v0

    const/16 v0, 0x4e

    aput-object v2, p2, v0

    const/16 v0, 0x4f

    const-string v1, "\u00fd"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    aput-object v2, p2, v0

    const/16 v0, 0x51

    aput-object v2, p2, v0

    const/16 v0, 0x52

    aput-object v2, p2, v0

    const/16 v0, 0x53

    aput-object v2, p2, v0

    const/16 v0, 0x54

    aput-object v2, p2, v0

    const/16 v0, 0x55

    aput-object v2, p2, v0

    const/16 v0, 0x56

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "z"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    const-string v1, "y"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    aput-object v2, p2, v0

    const/16 v0, 0x3d

    aput-object v2, p2, v0

    const/16 v0, 0x3e

    aput-object v2, p2, v0

    const/16 v0, 0x3f

    aput-object v2, p2, v0

    const/16 v0, 0x40

    aput-object v2, p2, v0

    const/16 v0, 0x41

    const-string v1, "\u017a\u017c\u017e"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    aput-object v2, p2, v0

    const/16 v0, 0x43

    aput-object v2, p2, v0

    const/16 v0, 0x44

    aput-object v2, p2, v0

    const/16 v0, 0x45

    aput-object v2, p2, v0

    const/16 v0, 0x46

    aput-object v2, p2, v0

    const/16 v0, 0x47

    aput-object v2, p2, v0

    const/16 v0, 0x48

    aput-object v2, p2, v0

    const/16 v0, 0x49

    aput-object v2, p2, v0

    const/16 v0, 0x4a

    aput-object v2, p2, v0

    const/16 v0, 0x4b

    aput-object v2, p2, v0

    const/16 v0, 0x4c

    aput-object v2, p2, v0

    const/16 v0, 0x4d

    aput-object v2, p2, v0

    const/16 v0, 0x4e

    aput-object v2, p2, v0

    const/16 v0, 0x4f

    const-string v1, "\u00fd"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    aput-object v2, p2, v0

    const/16 v0, 0x51

    aput-object v2, p2, v0

    const/16 v0, 0x52

    aput-object v2, p2, v0

    const/16 v0, 0x53

    aput-object v2, p2, v0

    const/16 v0, 0x54

    aput-object v2, p2, v0

    const/16 v0, 0x55

    aput-object v2, p2, v0

    const/16 v0, 0x56

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    const-string v1, "z"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    const-string v1, "y"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u00fc"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u00f6"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u00e4"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    aput-object v2, p2, v0

    const/16 v0, 0x3d

    aput-object v2, p2, v0

    const/16 v0, 0x3e

    aput-object v2, p2, v0

    const/16 v0, 0x3f

    aput-object v2, p2, v0

    const/16 v0, 0x40

    aput-object v2, p2, v0

    const/16 v0, 0x41

    const-string v1, "\u017a\u017c\u017e"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    aput-object v2, p2, v0

    const/16 v0, 0x43

    aput-object v2, p2, v0

    const/16 v0, 0x44

    aput-object v2, p2, v0

    const/16 v0, 0x45

    aput-object v2, p2, v0

    const/16 v0, 0x46

    aput-object v2, p2, v0

    const/16 v0, 0x47

    aput-object v2, p2, v0

    const/16 v0, 0x48

    aput-object v2, p2, v0

    const/16 v0, 0x49

    aput-object v2, p2, v0

    const/16 v0, 0x4a

    aput-object v2, p2, v0

    const/16 v0, 0x4b

    aput-object v2, p2, v0

    const/16 v0, 0x4c

    aput-object v2, p2, v0

    const/16 v0, 0x4d

    aput-object v2, p2, v0

    const/16 v0, 0x4e

    aput-object v2, p2, v0

    const/16 v0, 0x4f

    const-string v1, "\u00fd"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    aput-object v2, p2, v0

    const/16 v0, 0x51

    aput-object v2, p2, v0

    const/16 v0, 0x52

    aput-object v2, p2, v0

    const/16 v0, 0x53

    aput-object v2, p2, v0

    const/16 v0, 0x54

    aput-object v2, p2, v0

    const/16 v0, 0x55

    aput-object v2, p2, v0

    const/16 v0, 0x56

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u0459"

    aput-object v0, p2, v1

    const-string v0, "\u045a"

    aput-object v0, p2, v3

    const-string v0, "\u0435"

    aput-object v0, p2, v4

    const-string v0, "\u0440"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0442"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0455"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0443"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0438"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u043e"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u043f"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0430"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u0441"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u0434"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0444"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u0433"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0445"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u0458"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u043a"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u043b"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u0437"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u045f"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0446"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u0432"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0431"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u043d"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u043c"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0448"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u0453"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0447"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u045c"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u0436"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u0439"

    aput-object v0, p2, v1

    const-string v0, "\u0446"

    aput-object v0, p2, v3

    const-string v0, "\u0443"

    aput-object v0, p2, v4

    const-string v0, "\u043a"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0435"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u043d"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0433"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0448"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0449"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0437"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0444"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u0456"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u0432"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0430"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u043f"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0440"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u043e"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u043b"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u0434"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u044f"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0447"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0441"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u043c"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0438"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0442"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u044c"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0445"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u0457"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0436"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u0454"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u0431"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u044e"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "\u0491"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u1786"

    aput-object v0, p2, v1

    const-string v0, "\u17b9"

    aput-object v0, p2, v3

    const-string v0, "\u17c1"

    aput-object v0, p2, v4

    const-string v0, "\u179a"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u178f"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u1799"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u17bb"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u17b7"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u17c4"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u1795"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u17b6"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u179f"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u178a"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u1790"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u1784"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u17a0"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u17d2"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u1780"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u179b"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u178b"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u1781"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u1785"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u179c"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u1794"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u1793"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u1798"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u17be"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u17d7"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u17cd"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u17d0"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u17cf"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u17cc"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u17ce"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "\u17cb"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "\u17c9"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "\u17ca"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "\u17a5"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u17b2"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u0439"

    aput-object v0, p2, v1

    const-string v0, "\u0446"

    aput-object v0, p2, v3

    const-string v0, "\u0443"

    aput-object v0, p2, v4

    const-string v0, "\u043a"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0435"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u043d"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0433"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0448"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0449"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0437"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0444"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u044b"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u0432"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0430"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u043f"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0440"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u043e"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u043b"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u0434"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u044f"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0447"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0441"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u043c"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0438"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0442"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u044c"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0445"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u044a"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0436"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u044d"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u0431"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u044e"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u0451"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "\u0259"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "\u0456"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "\u04a3"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "\u0493"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u04af"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u04b1"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u049b"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u04e9"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u04bb"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u0443"

    aput-object v0, p2, v1

    const-string v0, "\u0435"

    aput-object v0, p2, v3

    const-string v0, "\u0438"

    aput-object v0, p2, v4

    const-string v0, "\u0448"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0449"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u043a"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0441"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0434"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0437"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0446"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u044c"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u044f"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u0430"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u043e"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u0436"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0433"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u0442"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u043d"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u0432"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u044e"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0439"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u044a"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u044d"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0444"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0445"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u043f"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0431"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u043c"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0447"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u0440"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u043b"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x58

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u0439"

    aput-object v0, p2, v1

    const-string v0, "\u0446"

    aput-object v0, p2, v3

    const-string v0, "\u0443"

    aput-object v0, p2, v4

    const-string v0, "\u04af"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u043a"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0435"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u043d"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0433"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0448"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0449"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0444"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u044b"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u0432"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0430"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u043f"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0440"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u043e"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u04e9"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u043b"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u044f"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0447"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0441"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u043c"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0438"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0442"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u044c"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0437"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u0445"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0434"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u0436"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u044d"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u0431"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u044e"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "\u04a3"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "\u0451"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, "\u044a"

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x57

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0x58

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u0e46"

    aput-object v0, p2, v1

    const-string v0, "\u0e44"

    aput-object v0, p2, v3

    const-string v0, "\u0e33"

    aput-object v0, p2, v4

    const-string v0, "\u0e1e"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0e30"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0e31"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0e35"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0e23"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0e19"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0e22"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0e1f"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u0e2b"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u0e01"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0e14"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u0e40"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0e49"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u0e48"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u0e32"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u0e2a"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u0e1c"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0e1b"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0e41"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u0e2d"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0e34"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0e37"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u0e17"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0e1a"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u0e25"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0e27"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u0e07"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u0e21"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u0e43"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u0e1d"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "\u0e45"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "\u0e03"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "\u0e20"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "\u0e16"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u0e38"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u0e36"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u0e04"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u0e15"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u0e08"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u0e02"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u0e0a"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    aput-object v2, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x57

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_10
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u0439"

    aput-object v0, p2, v1

    const-string v0, "\u0446"

    aput-object v0, p2, v3

    const-string v0, "\u0443"

    aput-object v0, p2, v4

    const-string v0, "\u043a"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0435"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u043d"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0433"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0448"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0449"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0437"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0444"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u044b"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u0432"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0430"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u043f"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0440"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u043e"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u043b"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u0434"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u044f"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0447"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0441"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u043c"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0438"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0442"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u044c"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0445"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u0436"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u044d"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u0431"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u044e"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "\u0451"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, "\u044a"

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u0444"

    aput-object v0, p2, v1

    const-string v0, "\u0446"

    aput-object v0, p2, v3

    const-string v0, "\u0443"

    aput-object v0, p2, v4

    const-string v0, "\u0436"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u044d"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u043d"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0433"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0448"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u04af"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0437"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0439"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u044b"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u0431"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u04e9"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u0430"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0445"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u0440"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u043e"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u043b"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u044f"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0447"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0451"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u0441"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u043c"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0438"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u0442"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u043a"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u044a"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0434"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u043f"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u044c"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u0432"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u044e"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, "\u0449"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, "\u0435"

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_12
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u0439"

    aput-object v0, p2, v1

    const-string v0, "\u049b"

    aput-object v0, p2, v3

    const-string v0, "\u0443"

    aput-object v0, p2, v4

    const-string v0, "\u043a"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0435"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u043d"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0433"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0448"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u04b3"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0437"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0444"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u04b7"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u0432"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0430"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u043f"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0440"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u043e"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u043b"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u0434"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u044f"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0447"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0441"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u043c"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0438"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0442"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u04e3"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0445"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u044a"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0436"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u044d"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u0431"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u044e"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u0451"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "\u04ef"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "\u0493"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_13
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u00e4"

    aput-object v0, p2, v1

    const-string v0, "w"

    aput-object v0, p2, v3

    const-string v0, "e"

    aput-object v0, p2, v4

    const-string v0, "r"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "t"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "y"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "u"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "i"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "o"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "p"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "a"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "s"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "d"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "f"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "g"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "h"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "j"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "k"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "l"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "z"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u00fc"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u00e7"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u00fd"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "b"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "n"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "m"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u017e"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "\u00f6"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, "\u015f"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, "\u0148"

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_14
    const/16 v0, 0x5a

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "q"

    aput-object v0, p2, v1

    const-string v0, "w"

    aput-object v0, p2, v3

    const-string v0, "e"

    aput-object v0, p2, v4

    const-string v0, "r"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "t"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "y"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "u"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0131"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "o"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "p"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "a"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "s"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "d"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "f"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "g"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "h"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "j"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "k"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "l"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "z"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "x"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "c"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "v"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "b"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "n"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "m"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u011f"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u00fc"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u015f"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "i"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u00f6"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u00e7"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    aput-object v2, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    aput-object v2, p2, v0

    const/16 v0, 0x3f

    aput-object v2, p2, v0

    const/16 v0, 0x40

    aput-object v2, p2, v0

    const/16 v0, 0x41

    aput-object v2, p2, v0

    const/16 v0, 0x42

    aput-object v2, p2, v0

    const/16 v0, 0x43

    aput-object v2, p2, v0

    const/16 v0, 0x44

    aput-object v2, p2, v0

    const/16 v0, 0x45

    aput-object v2, p2, v0

    const/16 v0, 0x46

    aput-object v2, p2, v0

    const/16 v0, 0x47

    aput-object v2, p2, v0

    const/16 v0, 0x48

    aput-object v2, p2, v0

    const/16 v0, 0x49

    aput-object v2, p2, v0

    const/16 v0, 0x4a

    aput-object v2, p2, v0

    const/16 v0, 0x4b

    aput-object v2, p2, v0

    const/16 v0, 0x4c

    aput-object v2, p2, v0

    const/16 v0, 0x4d

    aput-object v2, p2, v0

    const/16 v0, 0x4e

    aput-object v2, p2, v0

    const/16 v0, 0x4f

    aput-object v2, p2, v0

    const/16 v0, 0x50

    aput-object v2, p2, v0

    const/16 v0, 0x51

    aput-object v2, p2, v0

    const/16 v0, 0x52

    aput-object v2, p2, v0

    const/16 v0, 0x53

    aput-object v2, p2, v0

    const/16 v0, 0x54

    aput-object v2, p2, v0

    const/16 v0, 0x55

    aput-object v2, p2, v0

    const/16 v0, 0x56

    aput-object v2, p2, v0

    const/16 v0, 0x57

    aput-object v2, p2, v0

    const/16 v0, 0x58

    aput-object v2, p2, v0

    const/16 v0, 0x59

    const-string v1, "\u00ec\u00ed\u00ee\u00ef\u012b\u012f\u0131"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_15
    const/16 v0, 0x58

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u0636"

    aput-object v0, p2, v1

    const-string v0, "\u0635"

    aput-object v0, p2, v3

    const-string v0, "\u062b"

    aput-object v0, p2, v4

    const-string v0, "\u0642"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0641"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u063a"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0639"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0647"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u062e"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u062d"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0634"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u0633"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u064a"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0628"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u0644"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0627"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u062a"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u0646"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u0645"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u0630"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0621"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0624"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u0631"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0649"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0629"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u0648"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u062c"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u0643"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0637"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u0632"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u0638"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u062f"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "\u0626"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "\ufefb\ufef9\ufef7\ufef5"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, "\u0623\u0621\u0625\u0622"

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, "\u0626"

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x57

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_16
    const/16 v0, 0x3e

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "q"

    aput-object v0, p2, v1

    const-string v0, "\u00fc"

    aput-object v0, p2, v3

    const-string v0, "e"

    aput-object v0, p2, v4

    const-string v0, "r"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "t"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "y"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "u"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "i"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "o"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "p"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "a"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "s"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "d"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "f"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "g"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "h"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "j"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "k"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "l"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "z"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "x"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "c"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "v"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "b"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "n"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "m"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u00f6"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u011f"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0131"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u0259"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u00e7"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u015f"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    aput-object v2, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_17
    const/16 v0, 0x29

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u00e5"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u00f8"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u00e6"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_18
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u03c2"

    aput-object v0, p2, v1

    const-string v0, "\u03b5"

    aput-object v0, p2, v3

    const-string v0, "\u03c1"

    aput-object v0, p2, v4

    const-string v0, "\u03c4"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u03c5"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u03b8"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u03b9"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u03bf"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u03c0"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u03b1"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u03c3"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u03b4"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u03c6"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u03b3"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u03b7"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u03be"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u03ba"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u03bb"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u0301"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u03b6"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u03c7"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u03c8"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u03c9"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u03b2"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u03bd"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u03bc"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, ";"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_19
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u05e7"

    aput-object v0, p2, v1

    const-string v0, "\u05e8"

    aput-object v0, p2, v3

    const-string v0, "\u05d0"

    aput-object v0, p2, v4

    const-string v0, "\u05d8"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u05d5"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u05df"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u05dd"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u05e4"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u05e9"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u05d3"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u05d2"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u05db"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u05e2"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u05d9"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u05d7"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u05dc"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u05da"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u05e3"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u05d6"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u05e1"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u05d1"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u05d4"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u05e0"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u05de"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u05e6"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u05ea"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u05e5"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_1a
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u0567"

    aput-object v0, p2, v1

    const-string v0, "\u0569"

    aput-object v0, p2, v3

    const-string v0, "\u0583"

    aput-object v0, p2, v4

    const-string v0, "\u0571"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u057b"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0587"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0580"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0579"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0573"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u056a"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0584"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u0578"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u0565"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u057c"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u057f"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0568"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u056b"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u0585"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u057a"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u056d"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0561"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u057d"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u0564"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0586"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0563"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u0570"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0575"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u056f"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u056c"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u0566"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u0572"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u0581"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u057e"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "\u0562"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "\u0576"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "\u0574"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_1b
    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x29

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u00e7"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u00eb"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x29

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u00eb"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u00e7"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_1c
    const/16 v0, 0x29

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u00e5"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u00f6"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u00e4"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_1d
    const/16 v0, 0x56

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "a"

    aput-object v0, p2, v1

    const-string v0, "z"

    aput-object v0, p2, v3

    const-string v0, "e"

    aput-object v0, p2, v4

    const-string v0, "r"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "t"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "y"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "u"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "i"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "o"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "p"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "q"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "s"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "d"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "f"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "g"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "h"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "j"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "k"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "l"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "w"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "x"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "c"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "v"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "b"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "n"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u00b4"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "m"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, "\u00e0\u00e1\u00e2\u00e3\u00e4\u00e5\u00e6\u0101\u0103\u0105"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "\u017a\u017c\u017e"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "\u00e8\u00e9\u00ea\u00eb\u0113\u0117\u0119\u011b\u0115\u0259"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "\u0155\u0159"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "\u00fe\u0165\u021b"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "\u00fd"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "\u00f9\u00fa\u00fb\u00fc\u016b\u016f\u0171\u0173"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, "\u00ec\u00ed\u00ee\u00ef\u012b\u012f\u0131"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "\u00f2\u00f3\u00f4\u00f5\u00f6\u00f8\u0151\u0153"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    aput-object v2, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, "\u00df\u00a7\u015b\u0161\u015f"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "\u010f\u0111"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    aput-object v2, p2, v0

    const/16 v0, 0x4a

    const-string v1, "\u0123\u011f"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    aput-object v2, p2, v0

    const/16 v0, 0x4c

    aput-object v2, p2, v0

    const/16 v0, 0x4d

    const-string v1, "\u0137"

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, "\u013a\u013c\u013e\u0142"

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, "\u00e7\u0107\u010d"

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, "\u00f1\u0144\u0146\u0148"

    aput-object v1, p2, v0

    const/16 v0, 0x55

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_1e
    const/16 v0, 0x29

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u00f0"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u00e6"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u00fe"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_1f
    const/16 v0, 0x23

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0105"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u010d"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0119"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u0117"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u012f"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u0161"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u0173"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "\u016b"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "\u017e"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_20
    const/16 v0, 0x29

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "Alt"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_21
    const/16 v0, 0x56

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u10e5"

    aput-object v0, p2, v1

    const-string v0, "\u10ec"

    aput-object v0, p2, v3

    const-string v0, "\u10d4"

    aput-object v0, p2, v4

    const-string v0, "\u10e0"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u10e2"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u10e7"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u10e3"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u10d8"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u10dd"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u10de"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u10d0"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u10e1"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u10d3"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u10e4"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u10d2"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u10f0"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u10ef"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u10d9"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u10da"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u10d6"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u10ee"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u10ea"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u10d5"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u10d1"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u10dc"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u10db"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "\u10ed"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "\u10e6"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "\u10d7"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, "\u10e8"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, "\u10df"

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, "\u10eb"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, "\u10e9"

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_22
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u0642"

    aput-object v0, p2, v1

    const-string v0, "\u0648"

    aput-object v0, p2, v3

    const-string v0, "\u0639"

    aput-object v0, p2, v4

    const-string v0, "\u0631"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u062a"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u06d2"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0626"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u06cc"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u06c1"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u067e"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0627"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u0633"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u062f"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0641"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u06af"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u06be"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u062c"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u062e"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u06a9"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u0632"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0635"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0686"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u0637"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0628"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0646"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u0645"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0644"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "\u0691"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "\u0679"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "\u0621"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "\u0622"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, "\u0634"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "\u0688"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "\u063a"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, "\u062d"

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, "\u0698"

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, "\u0630"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, "\u0636"

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, "\u062b"

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, "\u0638"

    aput-object v1, p2, v0

    const/16 v0, 0x53

    aput-object v2, p2, v0

    const/16 v0, 0x54

    const-string v1, "\u06ba"

    aput-object v1, p2, v0

    const/16 v0, 0x55

    aput-object v2, p2, v0

    const/16 v0, 0x56

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_23
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u0635"

    aput-object v0, p2, v1

    const-string v0, "\u062b"

    aput-object v0, p2, v3

    const-string v0, "\u0642"

    aput-object v0, p2, v4

    const-string v0, "\u0641"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0639"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0647"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u062e"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u062d"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u062c"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0686"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0634"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u0633"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u06cc"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0628"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u0644"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0627"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u062a"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u0646"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u0645"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u0637"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0632"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0631"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u062f"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0648"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u06a9"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u06af"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u067e"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, "\u0636"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "\u064b"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "\u063a"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "\u064e"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, "\u064f"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "\u0626"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, "\u0651"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "\u0650"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, "\u0622"

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, "\u0638"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, "\u0698"

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, "\u0630"

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, "\u0621"

    aput-object v1, p2, v0

    const/16 v0, 0x56

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_24
    const/16 v0, 0x46

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "q"

    aput-object v0, p2, v1

    const-string v0, "e"

    aput-object v0, p2, v3

    const-string v0, "r"

    aput-object v0, p2, v4

    const-string v0, "t"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "y"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "u"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "i"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "o"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "p"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u2018"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "a"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "s"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "d"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "f"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "g"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "h"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "j"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "k"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "l"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "z"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "x"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "c"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "v"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "b"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "n"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "m"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    aput-object v2, p2, v0

    const/16 v0, 0x3d

    const-string v1, "\u00e8\u00e9\u00ea\u00eb\u0113\u0117\u0119\u011b\u0115\u0259"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "\u0155\u0159"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "\u00fe\u0165\u021b"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "\u00fd"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "\u00f9\u00fa\u00fb\u00fc\u016b\u016f\u0171\u0173"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "\u00ec\u00ed\u00ee\u00ef\u012b\u012f\u0131"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, "\u00f2\u00f3\u00f4\u00f5\u00f6\u00f8\u0151\u0153"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    aput-object v2, p2, v0

    const/16 v0, 0x45

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_25
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u25cc\u2013|"

    aput-object v0, p2, v1

    const-string v0, "\u0905"

    aput-object v0, p2, v3

    const-string v0, "\u0906"

    aput-object v0, p2, v4

    const-string v0, "\u0907"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0908"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0915"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0916"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0917"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0918"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u095c"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0909"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u090a"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u090f"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0910"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u0913"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u091a"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u091b"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u091c"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u091d"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u091e"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0914"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0905\u0902"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u0905:"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u090b"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0911"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u091f"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0920"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u0921"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0922"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u0923"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u0924"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u0925"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u0926"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "\u0927"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "\u0928"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "\u092a"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "\u092b"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u092c"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u092d"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u092e"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u092f"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u0930"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u0932"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u0935"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u0936"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u0937"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u0938"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u0939"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u20b9123"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "\u0964"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "\u0964"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_26
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u25cc\u2013|"

    aput-object v0, p2, v1

    const-string v0, "\u0905"

    aput-object v0, p2, v3

    const-string v0, "\u0906"

    aput-object v0, p2, v4

    const-string v0, "\u0907"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0908"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0915"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0916"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0917"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0918"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u095c"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0909"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u090a"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u090f"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0910"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u0913"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u091a"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u091b"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u091c"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u091d"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u091e"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0914"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0905\u0902"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u0905:"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u090b"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0911"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u091f"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0920"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u0921"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0922"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u0923"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u0924"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u0925"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u0926"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "\u0927"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "\u0928"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "\u092a"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "\u092b"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u092c"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u092d"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u092e"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u092f"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u0930"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u0932"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u0935"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u0936"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u0937"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u0938"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u0939"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u20b9123"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "."

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "."

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_27
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u25cc\u2013|"

    aput-object v0, p2, v1

    const-string v0, "\u0c85"

    aput-object v0, p2, v3

    const-string v0, "\u0c86"

    aput-object v0, p2, v4

    const-string v0, "\u0c87"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0c88"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0c95"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0c96"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0c97"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0c98"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0c99"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0c89"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u0c8a"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u0c8b"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0c8e"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u0c8f"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0c9a"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u0c9b"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u0c9c"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u0c9d"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u0c9e"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0c90"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0c92"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u0c93"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0c94"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0c85\u0c82"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u0c9f"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0ca0"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u0ca1"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0ca2"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u0ca3"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u0ca4"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u0ca5"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u0ca6"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "\u0ca7"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "\u0ca8"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "\u0caa"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "\u0cab"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u0cac"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u0cad"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u0cae"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u0caf"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u0cb0"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u0cb2"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u0cb5"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u0cb6"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u0cb7"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u0cb8"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u0cb9"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u20b9123"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "."

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "."

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_28
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u25cc\u2013|"

    aput-object v0, p2, v1

    const-string v0, "\u0985"

    aput-object v0, p2, v3

    const-string v0, "\u0986"

    aput-object v0, p2, v4

    const-string v0, "\u0987"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0988"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0995"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0996"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0997"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0998"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0999"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0989"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u098a"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u098b"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u098f"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u0990"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u099a"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u099b"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u099c"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u099d"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u099e"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0993"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0994"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u0985\u0982"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0985\u0983"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0985\u0981"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u099f"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u09a0"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u09a1"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u09a2"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u09a3"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u09a4"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u09a5"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u09a6"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "\u09a7"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "\u09a8"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "\u09aa"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "\u09ab"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u09ac"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u09ad"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u09ae"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u09af"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u09b0"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u09b2"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u09ac"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u09b6"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u09b7"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u09b8"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u09b9"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u20b9123"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "\u0964"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "\u0964"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_29
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u09f0"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u09f1"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    const-string v1, "\u0964"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "\u0964"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2a
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    const-string v1, "."

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "."

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2b
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u25cc\u2013|"

    aput-object v0, p2, v1

    const-string v0, "\u0c05"

    aput-object v0, p2, v3

    const-string v0, "\u0c06"

    aput-object v0, p2, v4

    const-string v0, "\u0c07"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0c08"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0c15"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0c16"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0c17"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0c18"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0c19"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0c09"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u0c0a"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u0c0b"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0c0e"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u0c0f"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0c1a"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u0c1b"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u0c1c"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u0c1d"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u0c1e"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0c10"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0c12"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u0c13"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0c14"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0c05\u0c02"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u0c1f"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0c20"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u0c21"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0c22"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u0c23"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u0c24"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u0c25"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u0c26"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "\u0c27"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "\u0c28"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "\u0c2a"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "\u0c2b"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u0c2c"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u0c2d"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u0c2e"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u0c2f"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u0c30"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u0c32"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u0c35"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u0c36"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u0c37"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u0c38"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u0c39"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u20b9123"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "."

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "."

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2c
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u25cc\u2013|"

    aput-object v0, p2, v1

    const-string v0, "\u0d85"

    aput-object v0, p2, v3

    const-string v0, "\u0d86"

    aput-object v0, p2, v4

    const-string v0, "\u0d87"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0d88"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0d9a"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0d9b"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0d9c"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0d9d"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0d9e"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0d89"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u0d8a"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u0d8b"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0d8c"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u0d91"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0da0"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u0da1"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u0da2"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u0da3"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u0da4"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0d92"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0d94"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u0d95"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0d96"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0d85\u0d82"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u0da7"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0da8"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u0da9"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0daa"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u0dab"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u0dad"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u0dae"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u0daf"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "\u0db0"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "\u0db1"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "\u0db4"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "\u0db5"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u0db6"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u0db7"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u0db8"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u0dba"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u0dbb"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u0dbd"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u0dc0"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u0dc1"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u0dc2"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u0dc3"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u0dc4"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u20b9123"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "."

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "."

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2d
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u25cc\u2013|"

    aput-object v0, p2, v1

    const-string v0, "\u0b05"

    aput-object v0, p2, v3

    const-string v0, "\u0b06"

    aput-object v0, p2, v4

    const-string v0, "\u0b07"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0b08"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0b15"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0b16"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0b17"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0b18"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0b19"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0b09"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u0b0a"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u0b0b"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0b0f"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u0b10"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0b1a"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u0b1b"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u0b1c"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u0b1d"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u0b1e"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0b13"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0b14"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u0b05\u0b02"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0b05\u0b03"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0b05\u0b01"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u0b1f"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0b20"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u0b21"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0b22"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u0b23"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u0b24"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u0b25"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u0b26"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "\u0b27"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "\u0b28"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "\u0b2a"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "\u0b2b"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u0b2c"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u0b2d"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u0b2e"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u0b2f"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u0b30"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u0b33"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u0b32"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u0b36"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u0b37"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u0b38"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u0b39"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u20b9123"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "\u0964"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "\u0964"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2e
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u25cc\u2013|"

    aput-object v0, p2, v1

    const-string v0, "\u0d05"

    aput-object v0, p2, v3

    const-string v0, "\u0d06"

    aput-object v0, p2, v4

    const-string v0, "\u0d07"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0d08"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0d15"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0d16"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0d17"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0d18"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0d19"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0d09"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u0d0a"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u0d0b"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0d0e"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u0d0f"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0d1a"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u0d1b"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u0d1c"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u0d1d"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u0d1e"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0d10"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0d12"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u0d13"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0d14"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0d05\u0d02"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u0d1f"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0d20"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u0d21"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0d22"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u0d23"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u0d24"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u0d25"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u0d26"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "\u0d27"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "\u0d28"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "\u0d2a"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "\u0d2b"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u0d2c"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u0d2d"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u0d2e"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u0d2f"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u0d30"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u0d32"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u0d35"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u0d36"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u0d37"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u0d38"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u0d39"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u20b9123"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "."

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "."

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2f
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u25cc\u2013|"

    aput-object v0, p2, v1

    const-string v0, "\u0a85"

    aput-object v0, p2, v3

    const-string v0, "\u0a86"

    aput-object v0, p2, v4

    const-string v0, "\u0a87"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0a88"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0a95"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0a96"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0a97"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0a98"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0a99"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0a89"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u0a8a"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u0a8f"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0a90"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u0a93"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0a9a"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u0a9b"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u0a9c"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u0a9d"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u0a9e"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0a94"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0a85\u0a82"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u0a85\u0a83"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0ae0"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0a91"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u0a9f"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0aa0"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u0aa1"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0aa2"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u0aa3"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u0aa4"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u0aa5"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u0aa6"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "\u0aa7"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "\u0aa8"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "\u0aaa"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "\u0aab"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u0aac"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u0aad"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u0aae"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u0aaf"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u0ab0"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u0ab2"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u0ab5"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u0ab6"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u0ab7"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u0ab8"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u0ab9"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u20b9123"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "."

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "."

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_30
    const/16 v0, 0x3c

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_31
    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u624b"

    aput-object v0, p2, v1

    const-string v0, "\u7530"

    aput-object v0, p2, v3

    const-string v0, "\u6c34"

    aput-object v0, p2, v4

    const-string v0, "\u53e3"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u5eff"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u535c"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u5c71"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u6208"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u4eba"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u5fc3"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u65e5"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u5c38"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u6728"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u706b"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u571f"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u7af9"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u5341"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u5927"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u4e2d"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\uff0c"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u96e3"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u91d1"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u5973"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u6708"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u5f13"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u4e00"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x57

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u624b"

    aput-object v0, p2, v1

    const-string v0, "\u7530"

    aput-object v0, p2, v3

    const-string v0, "\u6c34"

    aput-object v0, p2, v4

    const-string v0, "\u53e3"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u5eff"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u535c"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u5c71"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u6208"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u4eba"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u5fc3"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u65e5"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u5c38"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u6728"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u706b"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u571f"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u7af9"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u5341"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u5927"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u4e2d"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u901a"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u96e3"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u91d1"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u5973"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u6708"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u5f13"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u4e00"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_32
    const/16 v0, 0x29

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_33
    const/16 v0, 0x58

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "\u00ea"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "\u01b0"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "\u00f4\u01a1"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "\u0103\u00e2"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "\u0111"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x57

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_34
    const/16 v0, 0x58

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u0ebb"

    aput-object v0, p2, v1

    const-string v0, "\u0ec4"

    aput-object v0, p2, v3

    const-string v0, "\u0eb3"

    aput-object v0, p2, v4

    const-string v0, "\u0e9e"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u0eb0"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u0eb4"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u0eb5"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u0eae"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0e99"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0e8d"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u0eb1"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u0eab"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u0e81"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u0e94"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u0ec0"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u0ec9"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u0ec8"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u0eb2"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u0eaa"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u0e9c"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u0e9b"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u0ec1"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u0ead"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u0eb6"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u0eb7"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u0e97"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u0e9a"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u0ea5"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u0ea7"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u0e87"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "\u0ea1"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "\u0ec3"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "\u0e9d"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "\u0ea2"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "\u0e9f"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "\u0ec2"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "\u0e96"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u0eb8"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u0eb9"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u0e84"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u0e95"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u0e88"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u0e82"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u0e8a"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u0ecd"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    aput-object v2, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x57

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_35
    const/16 v0, 0x33

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u0919"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_36
    const/16 v0, 0x5a

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u1006"

    aput-object v0, p2, v1

    const-string v0, "\u1010"

    aput-object v0, p2, v3

    const-string v0, "\u1014"

    aput-object v0, p2, v4

    const-string v0, "\u1019"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u1021"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u1015"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u1000"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u1004"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u101e"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u1005"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u1031"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u103b"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u102d"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u103a"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u103d"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u1037"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u103c"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u102f"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u1030"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u1016"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u1011"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u1001"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u101c"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u1018"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u100a"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u102c"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u101b"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u1038"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u101a"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u1039"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, "\u1009"

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, "\u102b"

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x57

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x58

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x59

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_37
    const/16 v0, 0x5a

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "\u1006"

    aput-object v0, p2, v1

    const-string v0, "\u1010"

    aput-object v0, p2, v3

    const-string v0, "\u1014"

    aput-object v0, p2, v4

    const-string v0, "\u1019"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "\u1021"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u1015"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u1000"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u1004"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u101e"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u1005"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u1031"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "\u103a"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "\u102d"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "\u1039"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "\u103c"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "\u1037"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "\u103b"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "\u102f"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "\u1030"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "\u1016"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u1011"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\u1001"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\u101c"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u1018"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u100a"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u102c"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u101b"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "\u1038"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u101a"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "+"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    const-string v1, "\u1067\u1066"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "\u1071\u1072\u1096"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "\u108f\u1077"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "\u107c"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "\u1078"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "\u1060"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "\u1086"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, "\u1065"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "\u108b"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, "\u105a"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "\u108a"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, "\u1094\u1095"

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, "\u1033"

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, "\u1034"

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, "\u1079"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, "\u1073\u1074"

    aput-object v1, p2, v0

    const/16 v0, 0x51

    const-string v1, "\u1061"

    aput-object v1, p2, v0

    const/16 v0, 0x52

    const-string v1, "\u1085\u104a"

    aput-object v1, p2, v0

    const/16 v0, 0x53

    const-string v1, "\u107b\u1093"

    aput-object v1, p2, v0

    const/16 v0, 0x54

    const-string v1, "\u1009"

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, "\u102b"

    aput-object v1, p2, v0

    const/16 v0, 0x56

    const-string v1, "\u1090"

    aput-object v1, p2, v0

    const/16 v0, 0x57

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x58

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x59

    const-string v1, ""

    aput-object v1, p2, v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_15
        0x61730000 -> :sswitch_29
        0x617a0000 -> :sswitch_16
        0x62650000 -> :sswitch_2
        0x62670000 -> :sswitch_d
        0x626e0000 -> :sswitch_28
        0x64610000 -> :sswitch_5
        0x64650000 -> :sswitch_6
        0x64654445 -> :sswitch_8
        0x656c0000 -> :sswitch_18
        0x656e0000 -> :sswitch_0
        0x65730000 -> :sswitch_3
        0x65740000 -> :sswitch_4
        0x66610000 -> :sswitch_23
        0x66690000 -> :sswitch_1c
        0x66724652 -> :sswitch_1d
        0x67750000 -> :sswitch_2f
        0x68690000 -> :sswitch_25
        0x68790000 -> :sswitch_1a
        0x69730000 -> :sswitch_1e
        0x69770000 -> :sswitch_19
        0x6a610000 -> :sswitch_32
        0x6b610000 -> :sswitch_21
        0x6b6b0000 -> :sswitch_c
        0x6b6d0000 -> :sswitch_b
        0x6b6e0000 -> :sswitch_27
        0x6b6f0000 -> :sswitch_1
        0x6b790000 -> :sswitch_e
        0x6c6f0000 -> :sswitch_34
        0x6c740000 -> :sswitch_1f
        0x6c760000 -> :sswitch_20
        0x6d6b0000 -> :sswitch_9
        0x6d6c0000 -> :sswitch_2e
        0x6d6e0000 -> :sswitch_11
        0x6d720000 -> :sswitch_26
        0x6d794d4d -> :sswitch_36
        0x6e620000 -> :sswitch_17
        0x6e650000 -> :sswitch_35
        0x6f720000 -> :sswitch_2d
        0x72750000 -> :sswitch_10
        0x73690000 -> :sswitch_2c
        0x736c0000 -> :sswitch_7
        0x73710000 -> :sswitch_1b
        0x74610000 -> :sswitch_2a
        0x74650000 -> :sswitch_2b
        0x74670000 -> :sswitch_12
        0x74680000 -> :sswitch_f
        0x746b0000 -> :sswitch_13
        0x74720000 -> :sswitch_14
        0x756b0000 -> :sswitch_a
        0x75720000 -> :sswitch_22
        0x757a0000 -> :sswitch_24
        0x76690000 -> :sswitch_33
        0x7a314d4d -> :sswitch_37
        0x7a680000 -> :sswitch_30
        0x7a68484b -> :sswitch_31
    .end sparse-switch
.end method

.method private fillQwertySymbolCodesArray(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object p2

    :sswitch_0
    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isDualLandMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsKorMode:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x56

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "0x2b"

    aput-object v0, p2, v1

    const-string v0, "0xd7"

    aput-object v0, p2, v3

    const-string v0, "0xf7"

    aput-object v0, p2, v4

    const-string v0, "0x3d"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "0x25"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "0x20a9"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "0x2664"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "0x2661"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x2606"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x2667"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x40"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "0x23"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "0x7e"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "0x2f"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "0x5e"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x26"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "0x2a"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "0x28"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "0x29"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "0x2d"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "0x2d"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "0x27"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "0x22"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x3a"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x3b"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x21"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x3f"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x60"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0x5f"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "0x5c"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "0x7c"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "0x3c"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "0x3e"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "0x7b"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "0x7d"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "0x5b"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "0x5d"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "0x25cb"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "0x25cf"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "0x25a1"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "0x25a0"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "0x25c7"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "0x24"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "0x20ac"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "0xa3"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "0xa5"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "0x203b"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "0x203b"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "0x2299"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "0xb0"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "0x2022"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "0xa4"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "0x300a"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "0x300b"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x51

    aput-object v2, p2, v0

    const/16 v0, 0x52

    aput-object v2, p2, v0

    const/16 v0, 0x53

    aput-object v2, p2, v0

    const/16 v0, 0x54

    const-string v1, "0xa1"

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, "0xbf"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x56

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "0x2b"

    aput-object v0, p2, v1

    const-string v0, "0xd7"

    aput-object v0, p2, v3

    const-string v0, "0xf7"

    aput-object v0, p2, v4

    const-string v0, "0x3d"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "0x25"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "0x5f"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "0x20ac"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "0xa3"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "0xa5"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x20a9"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x40"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "0x23"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "0x24"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "0x2f"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "0x5e"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x26"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "0x2a"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "0x28"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "0x29"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "0x2d"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "0x2d"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "0x27"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "0x22"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x3a"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x3b"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x21"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x3f"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x60"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0x7e"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "0x5c"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "0x7c"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "0x3c"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "0x3e"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "0x7b"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "0x7d"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "0x5b"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "0x5d"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "0x25aa"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "0x25cb"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "0x25cf"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "0x25a1"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "0x25a0"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "0x2664"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "0x2661"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "0x2662"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "0x2667"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "0x2606"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "0x2606"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "0x2299"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "0xb0"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "0x2022"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "0xa4"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "0x300a"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "0x300b"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x51

    aput-object v2, p2, v0

    const/16 v0, 0x52

    aput-object v2, p2, v0

    const/16 v0, 0x53

    aput-object v2, p2, v0

    const/16 v0, 0x54

    const-string v1, "0xa1"

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, "0xbf"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsKorMode:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x51

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "0x2b"

    aput-object v0, p2, v1

    const-string v0, "0xd7"

    aput-object v0, p2, v3

    const-string v0, "0xf7"

    aput-object v0, p2, v4

    const-string v0, "0x3d"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "0x25"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "0xffe6"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "0x2664"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "0x2661"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x2606"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x2667"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x21"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "0x40"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "0x23"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "0x7e"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "0x2f"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x5e"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "0x26"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "0x2a"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "0x28"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "0x29"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "0x2d"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "0x27"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "0x22"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x3a"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x3b"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x2c"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x3f"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x60"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0x5f"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "0x5c"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "0x7c"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "0x3c"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "0x3e"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "0x7b"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "0x7d"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "0x5b"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "0x5d"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "0x2022"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "0x25CB"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "0x25CF"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "0x25A1"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "0x25A0"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "0x2662"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "0x24"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "0x20ac"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "0xa3"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "0xa5"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "0x00B0"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "0x203b"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "0xa4"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "0x300a"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "0x300b"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "0xa1"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "0xbf"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, "-115"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x51

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "0x31"

    aput-object v0, p2, v1

    const-string v0, "0x32"

    aput-object v0, p2, v3

    const-string v0, "0x33"

    aput-object v0, p2, v4

    const-string v0, "0x34"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "0x35"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "0x36"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "0x37"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "0x38"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x39"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x30"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x21"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "0x40"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "0x23"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "0x24"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "0x2f"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x5e"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "0x26"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "0x2a"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "0x28"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "0x29"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "0x2d"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "0x27"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "0x22"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x3a"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x3b"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x2c"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x3f"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x2B"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0xD7"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "0xF7"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "0x3d"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "0x3c"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "0x3e"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "0x7b"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "0x7d"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "0x5b"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "0x5d"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "0x20ac"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "0xa3"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "0xa5"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "0x20a9"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "0x25"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "0x7E"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "0x60"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "0x00A4"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "0x2661"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "0x2606"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "0x5f"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "0x5c"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "0x7c"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "0x300a"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "0x300b"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "0xa1"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "0xbf"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, "-115"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x51

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "0x2B"

    aput-object v0, p2, v1

    const-string v0, "0xD7"

    aput-object v0, p2, v3

    const-string v0, "0xF7"

    aput-object v0, p2, v4

    const-string v0, "0x3d"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "0x25"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "0x5f"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "0x20ac"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "0xa3"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "0xa5"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x20a9"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x21"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "0x40"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "0x23"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "0x24"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "0x2f"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x5e"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "0x26"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "0x2a"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "0x28"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "0x29"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "0x2d"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "0x27"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "0x22"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x3a"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x3b"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x2c"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x3f"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x60"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0x7E"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "0x5c"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "0x7c"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "0x3c"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "0x3e"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "0x7b"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "0x7d"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "0x5b"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "0x5d"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "0x00B0"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "0x2022"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "0x25CB"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "0x25CF"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "0x25A1"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "0x25A0"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "0x2664"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "0x2661"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "0x2662"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "0x2667"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "0x2606"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "0x25AA"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "0x00A4"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "0x300a"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "0x300b"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "0xa1"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "0xbf"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, "-115"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x36

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    const-string v1, "0xa1"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "0xbf"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    const-string v1, "0xa5"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "0x20a9"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x36

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "0xa1"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0xbf"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    const-string v1, "0xa5"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "0x20a9"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x28

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    const-string v1, "0x0052"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x9

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x0052"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_3
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x28

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    const-string v1, "0x0B21"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x9

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x0B21"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_4
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x28

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u0000x20BD"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x9

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x20BD"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x003F"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x003B,0x003F"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_6
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x29

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x055C"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    const-string v1, "0x058A"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x002E"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x055D"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x055E"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    const-string v1, "0x055D"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "0x058F"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "0x055B"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "0x055D"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x058F"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x055B"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x055C"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    const-string v1, "0x058A"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x002E"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x055D"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x055E"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_7
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x29

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    const-string v1, "0xFF01"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    const-string v1, "0xFF1F"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x3001"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u300c"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u0000x300D"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x1a

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "0x300C"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x300D"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "0xFF01"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    const-string v1, "0xFF1F"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x3001"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x1a

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    const-string v1, "0xFF0C"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_9
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x28

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u0000x004b"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x9

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x004b"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x36

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x20B9"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    const-string v1, "0x0950"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "0x5350"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "0x262A"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "0x271D"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_b
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_c

    const/16 v0, 0x28

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    const-string v1, "0x20AE"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x9

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x20AE"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_c
    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x061B"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x061F"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x061B"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x060C"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x061F"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_d
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_e

    const/16 v0, 0x28

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x17D6"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u0000x17DB"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x18

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x17DB"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x17D6"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_e
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_f

    const/16 v0, 0x28

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    const-string v1, "0x20AD"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x9

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x20AD"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_f
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_10

    const/16 v0, 0x28

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    const-string v1, "0x0E3F"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x9

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x0E3F"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_10
    const/16 v0, 0x36

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x20aa"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0x36

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x20aa"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x61b"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x60c"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x61f"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x60"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0x7e"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "0x5c"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "0x7c"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "0x3c"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "0x3e"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "0x7b"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "0x7d"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "0x5b"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "0x5d"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "0x25aa"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "0x25cb"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "0x25cf"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "0x25a1"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "0x25a0"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "0x2664"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "0x2661"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "0x2662"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "0x2667"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    const-string v1, "0x2606"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "0x2299"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "0xb0"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "0x2022"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "0xa4"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "0x300a"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "0x300b"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_12
    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x56

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "0x2b"

    aput-object v0, p2, v1

    const-string v0, "0xd7"

    aput-object v0, p2, v3

    const-string v0, "0xf7"

    aput-object v0, p2, v4

    const-string v0, "0x3d"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "0x25"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "0x5f"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "0x20ac"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "0xa3"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "0xa5"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x20a9"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x40"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "0x23"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "0x24"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "0x2f"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "0x5e"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x26"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "0x2a"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "0x28"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "0x29"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "0x2d"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "0x2d"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "0x27"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "0x22"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x3a"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x3b"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x21"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x3f"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x60"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0x7e"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "0x5c"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "0x7c"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "0x3c"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "0x3e"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "0x7b"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "0x7d"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "0x5b"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "0x5d"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "0x25aa"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "0x25cb"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "0x25cf"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "0x25a1"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "0x25a0"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "0x2664"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "0x2661"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "0x2662"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "0x2667"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "0x2606"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "0x2606"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "0x2299"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "0xb0"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "0x2022"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "0xa4"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "0x300a"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "0x300b"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x51

    aput-object v2, p2, v0

    const/16 v0, 0x52

    aput-object v2, p2, v0

    const/16 v0, 0x53

    aput-object v2, p2, v0

    const/16 v0, 0x54

    const-string v1, "0xa1"

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, "0xbf"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_11
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_12

    const/16 v0, 0x32

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x40"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "0x24"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "0x21"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "0x23"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x5c"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    const-string v1, "0x5e"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0x36

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x40"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "0x24"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "0x21"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "0x23"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x5c"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    const-string v1, "0x5e"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_13
    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x56

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "0x2b"

    aput-object v0, p2, v1

    const-string v0, "0xd7"

    aput-object v0, p2, v3

    const-string v0, "0xf7"

    aput-object v0, p2, v4

    const-string v0, "0x3d"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "0x25"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "0x5f"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "0x20ac"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "0xa3"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "0xa5"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x20a9"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x40"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "0x23"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "0x24"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "0x2f"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "0x5e"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x26"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "0x2a"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "0x28"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "0x29"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "0x2d"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "0x2d"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "0x27"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "0x22"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x3a"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x3b"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x21"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x3f"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x60"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0x7e"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "0x5c"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "0x7c"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "0x3c"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "0x3e"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "0x7b"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "0x7d"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "0x5b"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "0x5d"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "0x25aa"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "0x25cb"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "0x25cf"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "0x25a1"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "0x25a0"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "0x2664"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "0x2661"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "0x2662"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "0x2667"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "0x2606"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "0x2606"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "0x2299"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "0xb0"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "0x2022"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "0xa4"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "0x300a"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "0x300b"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, "-115"

    aput-object v1, p2, v0

    const/16 v0, 0x51

    aput-object v2, p2, v0

    const/16 v0, 0x52

    aput-object v2, p2, v0

    const/16 v0, 0x53

    aput-object v2, p2, v0

    const/16 v0, 0x54

    const-string v1, "0xa1"

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, "0xbf"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0x36

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "0x2b"

    aput-object v0, p2, v1

    const-string v0, "0xd7"

    aput-object v0, p2, v3

    const-string v0, "0xf7"

    aput-object v0, p2, v4

    const-string v0, "0x3d"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "0x2f"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "0x5f"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "0x3c"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "0x3e"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "0x5b"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0x5d"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "0x21"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "0x40"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "0x23"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "0x24"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "0x25"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "0x5e"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "0x26"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "0x2a"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "0x28"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, "0x29"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "0x2d"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "0x27"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "0x22"

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, "0x3a"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, "0x3b"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "0x2c"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "0x3f"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "0x60"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "0x7e"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "0x5c"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "0x7c"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "0x7b"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "0x7d"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "0x20ac"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "0xa3"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "0xa5"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "0x20a9"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "0xb0"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "0x2022"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "0x25cb"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "0x25cf"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "0x25a1"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "0x25a0"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "0x2664"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "0x2661"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "0x2662"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "0x2667"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "0x2606"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "0x25aa"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "0xa4"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "0x300a"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "0x300b"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "0xa1"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "0xbf"

    aput-object v1, p2, v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x36290000 -> :sswitch_11
        -0x2a920000 -> :sswitch_13
        -0x1a920000 -> :sswitch_12
        0x61660000 -> :sswitch_2
        0x61720000 -> :sswitch_c
        0x656c0000 -> :sswitch_5
        0x656e0000 -> :sswitch_0
        0x65730000 -> :sswitch_1
        0x68650000 -> :sswitch_10
        0x68690000 -> :sswitch_a
        0x68790000 -> :sswitch_6
        0x6a610000 -> :sswitch_7
        0x6b6d0000 -> :sswitch_d
        0x6c6f0000 -> :sswitch_e
        0x6d6e0000 -> :sswitch_b
        0x6d794d4d -> :sswitch_9
        0x6e650000 -> :sswitch_a
        0x72750000 -> :sswitch_4
        0x74670000 -> :sswitch_3
        0x74680000 -> :sswitch_f
        0x7a314d4d -> :sswitch_9
        0x7a680000 -> :sswitch_8
    .end sparse-switch
.end method

.method private fillQwertySymbolLabelsArray(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object p2

    :sswitch_0
    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isDualLandMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsKorMode:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x56

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "+"

    aput-object v0, p2, v1

    const-string v0, "\u00d7"

    aput-object v0, p2, v3

    const-string v0, "\u00f7"

    aput-object v0, p2, v4

    const-string v0, "="

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "%"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u20a9"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u2664"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u2661"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u2606"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u2667"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "@"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "#"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "~"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "/"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "^"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "&"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "*"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "("

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, ")"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "-"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\'"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\""

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, ":"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, ";"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "!"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "?"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "`"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "_"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\\"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "|"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "<"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, ">"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "{"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "}"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "["

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "]"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u25cb"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u25cf"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u25a1"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u25a0"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u2662"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "$"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u20ac"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\uffe1"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\uffe5"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u203b"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u203b"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u2299"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "\u00b0"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "\u2022"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "\u00a4"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "\u300a"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "\u300b"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, ":-)"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, ":-("

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, ";-)"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, ":-P"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "=-O"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, ":-*"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, ":O"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "B-)"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ":-$"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ":-!"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ":-["

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "O:-)"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ":-\\"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ":\'("

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ":-X"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ":-D"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "o_O"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ":-/"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "x-("

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ":-I"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "<3"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ":-V"

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, "XD"

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ":-Q"

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ":-@"

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ":-C"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ":-O"

    aput-object v1, p2, v0

    const/16 v0, 0x51

    aput-object v2, p2, v0

    const/16 v0, 0x52

    aput-object v2, p2, v0

    const/16 v0, 0x53

    aput-object v2, p2, v0

    const/16 v0, 0x54

    const-string v1, "\u00a1"

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, "\u00bf"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x56

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "+"

    aput-object v0, p2, v1

    const-string v0, "\u00d7"

    aput-object v0, p2, v3

    const-string v0, "\u00f7"

    aput-object v0, p2, v4

    const-string v0, "="

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "%"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "_"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u20ac"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u00a3"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u00a5"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u20a9"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "@"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "#"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "$"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "/"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "^"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "&"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "*"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "("

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, ")"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "-"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\'"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\""

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, ":"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, ";"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "!"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "?"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "`"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "~"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\\"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "|"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "<"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, ">"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "{"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "}"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "["

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "]"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u25aa"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u25cb"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u25cf"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u25a1"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u25a0"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u2664"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u2661"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u2662"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u2667"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u2606"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u2606"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u2299"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "\u00b0"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "\u2022"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "\u00a4"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "\u300a"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "\u300b"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, ":-)"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, ":-("

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, ";-)"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, ":-P"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "=-O"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, ":-*"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, ":O"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "B-)"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ":-$"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ":-!"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ":-["

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "O:-)"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ":-\\"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ":\'("

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ":-X"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ":-D"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "o_O"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ":-/"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "x-("

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ":-I"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "<3"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ":-V"

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, "XD"

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ":-Q"

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ":-@"

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ":-C"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ":-O"

    aput-object v1, p2, v0

    const/16 v0, 0x51

    aput-object v2, p2, v0

    const/16 v0, 0x52

    aput-object v2, p2, v0

    const/16 v0, 0x53

    aput-object v2, p2, v0

    const/16 v0, 0x54

    const-string v1, "\u00a1"

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, "\u00bf"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsKorMode:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x51

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "+"

    aput-object v0, p2, v1

    const-string v0, "\u00d7"

    aput-object v0, p2, v3

    const-string v0, "\u00f7"

    aput-object v0, p2, v4

    const-string v0, "="

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "%"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "\u20a9"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u2664"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u2661"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u2606"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u2667"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "!"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "@"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "#"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "~"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "/"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "^"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "&"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "*"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "("

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, ")"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "-"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\'"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\""

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, ":"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, ";"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, ","

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "?"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "`"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "_"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\\"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "|"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "<"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, ">"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "{"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "}"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "["

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "]"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u2022"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u25cb"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u25cf"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u25a1"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u25a0"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u2662"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "$"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u20ac"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u00a3"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u00a5"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u00b0"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u203b"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "\u00a4"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "\u300a"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "\u300b"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "\u00a1"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "\u00bf"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, ":-)"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, ":-("

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, ";-)"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, ":-P"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "=-O"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, ":-*"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, ":O"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "B-)"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ":-$"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ":-!"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ":-["

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "O:-)"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ":-\\"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ":\'("

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ":-X"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ":-D"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "o_O"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ":-/"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "x-("

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ":-I"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "<3"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ":-V"

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, "XD"

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ":-Q"

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ":-@"

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ":-C"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ":-O"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x51

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "1"

    aput-object v0, p2, v1

    const-string v0, "2"

    aput-object v0, p2, v3

    const-string v0, "3"

    aput-object v0, p2, v4

    const-string v0, "4"

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "5"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "6"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "7"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "8"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "9"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "0"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "!"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "@"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "#"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "$"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "/"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "^"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "&"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "*"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "("

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, ")"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "-"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\'"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\""

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, ":"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, ";"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, ","

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "?"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "+"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "\u00d7"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\u00f7"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "="

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "<"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, ">"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "{"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "}"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "["

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "]"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u20ac"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\uffe1"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\uffe5"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u20a9"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "%"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "~"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "`"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u00a4"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u2661"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u2606"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "_"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\\"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "|"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "\u300a"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "\u300b"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "\u00a1"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "\u00bf"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, ":-)"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, ":-("

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, ";-)"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, ":-P"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "=-O"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, ":-*"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, ":O"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "B-)"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ":-$"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ":-!"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ":-["

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "O:-)"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ":-\\"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ":\'("

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ":-X"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ":-D"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "o_O"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ":-/"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "x-("

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ":-I"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "<3"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ":-V"

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, "XD"

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ":-Q"

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ":-@"

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ":-C"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ":-O"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x51

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "+"

    aput-object v0, p2, v1

    const-string v0, "\u00d7"

    aput-object v0, p2, v3

    const-string v0, "\u00f7"

    aput-object v0, p2, v4

    const-string v0, "="

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "%"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "_"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u20ac"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u00a3"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u00a5"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u20a9"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "!"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "@"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "#"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "$"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "/"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "^"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "&"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "*"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "("

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, ")"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "-"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\'"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\""

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, ":"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, ";"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, ","

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "?"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "`"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "~"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\\"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "|"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "<"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, ">"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "{"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "}"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "["

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "]"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u00b0"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u2022"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u25cb"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u25cf"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u25a1"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u25a0"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u2664"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u2661"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u2662"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u2667"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u2606"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u25aa"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "\u00a4"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "\u300a"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "\u300b"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "\u00a1"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "\u00bf"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, ":-)"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, ":-("

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, ";-)"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, ":-P"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "=-O"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, ":-*"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, ":O"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "B-)"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ":-$"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ":-!"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ":-["

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "O:-)"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ":-\\"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ":\'("

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ":-X"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ":-D"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "o_O"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ":-/"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "x-("

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ":-I"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "<3"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ":-V"

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, "XD"

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ":-Q"

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ":-@"

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ":-C"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ":-O"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x36

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u00a1"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u00bf"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    const-string v1, "\u00a5"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "\u20a9"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x36

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u00a1"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u00bf"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    const-string v1, "\u00a5"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "\u20a9"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_2
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x28

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    const-string v1, "R"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x9

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "R"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_3
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x28

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u0b21"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x9

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0b21"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_4
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x28

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u20bd"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x9

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u20bd"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    const-string v1, "?"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, ";"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_6
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x29

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u055c"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u058a"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    const-string v1, "."

    aput-object v1, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u055d"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u055e"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u055d"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u058f"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u055b"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u055d"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u058f"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u055b"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\u055c"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    const-string v1, "\u058a"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    const-string v1, "."

    aput-object v1, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u055d"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u055e"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_7
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x29

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    const-string v1, "\uff01"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    const-string v1, "\uff1f"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u3001"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u300c"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u300d"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x1a

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u300c"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u300d"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "\uff01"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    const-string v1, "\uff1f"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u3001"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x74

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    const-string v1, "\uff0c"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    aput-object v2, p2, v0

    const/16 v0, 0x3d

    aput-object v2, p2, v0

    const/16 v0, 0x3e

    aput-object v2, p2, v0

    const/16 v0, 0x3f

    aput-object v2, p2, v0

    const/16 v0, 0x40

    aput-object v2, p2, v0

    const/16 v0, 0x41

    aput-object v2, p2, v0

    const/16 v0, 0x42

    aput-object v2, p2, v0

    const/16 v0, 0x43

    aput-object v2, p2, v0

    const/16 v0, 0x44

    aput-object v2, p2, v0

    const/16 v0, 0x45

    aput-object v2, p2, v0

    const/16 v0, 0x46

    aput-object v2, p2, v0

    const/16 v0, 0x47

    aput-object v2, p2, v0

    const/16 v0, 0x48

    aput-object v2, p2, v0

    const/16 v0, 0x49

    aput-object v2, p2, v0

    const/16 v0, 0x4a

    aput-object v2, p2, v0

    const/16 v0, 0x4b

    aput-object v2, p2, v0

    const/16 v0, 0x4c

    aput-object v2, p2, v0

    const/16 v0, 0x4d

    aput-object v2, p2, v0

    const/16 v0, 0x4e

    aput-object v2, p2, v0

    const/16 v0, 0x4f

    aput-object v2, p2, v0

    const/16 v0, 0x50

    aput-object v2, p2, v0

    const/16 v0, 0x51

    aput-object v2, p2, v0

    const/16 v0, 0x52

    aput-object v2, p2, v0

    const/16 v0, 0x53

    aput-object v2, p2, v0

    const/16 v0, 0x54

    aput-object v2, p2, v0

    const/16 v0, 0x55

    aput-object v2, p2, v0

    const/16 v0, 0x56

    aput-object v2, p2, v0

    const/16 v0, 0x57

    aput-object v2, p2, v0

    const/16 v0, 0x58

    aput-object v2, p2, v0

    const/16 v0, 0x59

    aput-object v2, p2, v0

    const/16 v0, 0x5a

    aput-object v2, p2, v0

    const/16 v0, 0x5b

    aput-object v2, p2, v0

    const/16 v0, 0x5c

    aput-object v2, p2, v0

    const/16 v0, 0x5d

    aput-object v2, p2, v0

    const/16 v0, 0x5e

    aput-object v2, p2, v0

    const/16 v0, 0x5f

    aput-object v2, p2, v0

    const/16 v0, 0x60

    aput-object v2, p2, v0

    const/16 v0, 0x61

    aput-object v2, p2, v0

    const/16 v0, 0x62

    aput-object v2, p2, v0

    const/16 v0, 0x63

    aput-object v2, p2, v0

    const/16 v0, 0x64

    aput-object v2, p2, v0

    const/16 v0, 0x65

    aput-object v2, p2, v0

    const/16 v0, 0x66

    aput-object v2, p2, v0

    const/16 v0, 0x67

    aput-object v2, p2, v0

    const/16 v0, 0x68

    aput-object v2, p2, v0

    const/16 v0, 0x69

    aput-object v2, p2, v0

    const/16 v0, 0x6a

    aput-object v2, p2, v0

    const/16 v0, 0x6b

    aput-object v2, p2, v0

    const/16 v0, 0x6c

    aput-object v2, p2, v0

    const/16 v0, 0x6d

    aput-object v2, p2, v0

    const/16 v0, 0x6e

    aput-object v2, p2, v0

    const/16 v0, 0x6f

    aput-object v2, p2, v0

    const/16 v0, 0x70

    aput-object v2, p2, v0

    const/16 v0, 0x71

    aput-object v2, p2, v0

    const/16 v0, 0x72

    aput-object v2, p2, v0

    const/16 v0, 0x73

    const-string v1, "\u3001"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_9
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x28

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    const-string v1, "K"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x9

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "K"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x36

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u20b9"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    const-string v1, "\u0950"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "\u5350"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "\u262a"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "\u271d"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_b
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_c

    const/16 v0, 0x28

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u20ae"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x9

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u20ae"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_c
    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u061b"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u061f"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x1b

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u061b"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u060c"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u061f"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_d
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_e

    const/16 v0, 0x28

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u17d6"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u17db"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x72

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u17db"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    const-string v1, "\u17d6"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    aput-object v2, p2, v0

    const/16 v0, 0x3d

    aput-object v2, p2, v0

    const/16 v0, 0x3e

    aput-object v2, p2, v0

    const/16 v0, 0x3f

    aput-object v2, p2, v0

    const/16 v0, 0x40

    aput-object v2, p2, v0

    const/16 v0, 0x41

    aput-object v2, p2, v0

    const/16 v0, 0x42

    aput-object v2, p2, v0

    const/16 v0, 0x43

    aput-object v2, p2, v0

    const/16 v0, 0x44

    aput-object v2, p2, v0

    const/16 v0, 0x45

    aput-object v2, p2, v0

    const/16 v0, 0x46

    aput-object v2, p2, v0

    const/16 v0, 0x47

    aput-object v2, p2, v0

    const/16 v0, 0x48

    aput-object v2, p2, v0

    const/16 v0, 0x49

    aput-object v2, p2, v0

    const/16 v0, 0x4a

    aput-object v2, p2, v0

    const/16 v0, 0x4b

    aput-object v2, p2, v0

    const/16 v0, 0x4c

    aput-object v2, p2, v0

    const/16 v0, 0x4d

    aput-object v2, p2, v0

    const/16 v0, 0x4e

    aput-object v2, p2, v0

    const/16 v0, 0x4f

    aput-object v2, p2, v0

    const/16 v0, 0x50

    aput-object v2, p2, v0

    const/16 v0, 0x51

    aput-object v2, p2, v0

    const/16 v0, 0x52

    aput-object v2, p2, v0

    const/16 v0, 0x53

    aput-object v2, p2, v0

    const/16 v0, 0x54

    aput-object v2, p2, v0

    const/16 v0, 0x55

    aput-object v2, p2, v0

    const/16 v0, 0x56

    aput-object v2, p2, v0

    const/16 v0, 0x57

    aput-object v2, p2, v0

    const/16 v0, 0x58

    aput-object v2, p2, v0

    const/16 v0, 0x59

    aput-object v2, p2, v0

    const/16 v0, 0x5a

    aput-object v2, p2, v0

    const/16 v0, 0x5b

    aput-object v2, p2, v0

    const/16 v0, 0x5c

    aput-object v2, p2, v0

    const/16 v0, 0x5d

    aput-object v2, p2, v0

    const/16 v0, 0x5e

    aput-object v2, p2, v0

    const/16 v0, 0x5f

    aput-object v2, p2, v0

    const/16 v0, 0x60

    aput-object v2, p2, v0

    const/16 v0, 0x61

    aput-object v2, p2, v0

    const/16 v0, 0x62

    const-string v1, "\u00a5\u17db"

    aput-object v1, p2, v0

    const/16 v0, 0x63

    aput-object v2, p2, v0

    const/16 v0, 0x64

    aput-object v2, p2, v0

    const/16 v0, 0x65

    aput-object v2, p2, v0

    const/16 v0, 0x66

    aput-object v2, p2, v0

    const/16 v0, 0x67

    aput-object v2, p2, v0

    const/16 v0, 0x68

    aput-object v2, p2, v0

    const/16 v0, 0x69

    aput-object v2, p2, v0

    const/16 v0, 0x6a

    aput-object v2, p2, v0

    const/16 v0, 0x6b

    aput-object v2, p2, v0

    const/16 v0, 0x6c

    aput-object v2, p2, v0

    const/16 v0, 0x6d

    aput-object v2, p2, v0

    const/16 v0, 0x6e

    aput-object v2, p2, v0

    const/16 v0, 0x6f

    aput-object v2, p2, v0

    const/16 v0, 0x70

    aput-object v2, p2, v0

    const/16 v0, 0x71

    const-string v1, ":\u17d6"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_e
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_f

    const/16 v0, 0x28

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u20ad"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x9

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u20ad"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_f
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_10

    const/16 v0, 0x28

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u0e3f"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x9

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u0e3f"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_10
    const/16 v0, 0x36

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u20aa"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0x64

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u20aa"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    aput-object v2, p2, v0

    const/16 v0, 0xb

    aput-object v2, p2, v0

    const/16 v0, 0xc

    aput-object v2, p2, v0

    const/16 v0, 0xd

    aput-object v2, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    aput-object v2, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    const-string v1, "\u061b"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "\u060c"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "\u061f"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "`"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "~"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\\"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "|"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "<"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, ">"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "{"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "}"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "["

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "]"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u25aa"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u25cb"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u25cf"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u25a1"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u25a0"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u2664"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u2661"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u2662"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u2667"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u2606"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u2299"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "\u00b0"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "\u2022"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "\u00a4"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "\u300a"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "\u300b"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    aput-object v2, p2, v0

    const/16 v0, 0x37

    aput-object v2, p2, v0

    const/16 v0, 0x38

    aput-object v2, p2, v0

    const/16 v0, 0x39

    aput-object v2, p2, v0

    const/16 v0, 0x3a

    aput-object v2, p2, v0

    const/16 v0, 0x3b

    aput-object v2, p2, v0

    const/16 v0, 0x3c

    aput-object v2, p2, v0

    const/16 v0, 0x3d

    aput-object v2, p2, v0

    const/16 v0, 0x3e

    aput-object v2, p2, v0

    const/16 v0, 0x3f

    aput-object v2, p2, v0

    const/16 v0, 0x40

    aput-object v2, p2, v0

    const/16 v0, 0x41

    aput-object v2, p2, v0

    const/16 v0, 0x42

    aput-object v2, p2, v0

    const/16 v0, 0x43

    aput-object v2, p2, v0

    const/16 v0, 0x44

    aput-object v2, p2, v0

    const/16 v0, 0x45

    aput-object v2, p2, v0

    const/16 v0, 0x46

    aput-object v2, p2, v0

    const/16 v0, 0x47

    aput-object v2, p2, v0

    const/16 v0, 0x48

    aput-object v2, p2, v0

    const/16 v0, 0x49

    aput-object v2, p2, v0

    const/16 v0, 0x4a

    aput-object v2, p2, v0

    const/16 v0, 0x4b

    aput-object v2, p2, v0

    const/16 v0, 0x4c

    aput-object v2, p2, v0

    const/16 v0, 0x4d

    aput-object v2, p2, v0

    const/16 v0, 0x4e

    aput-object v2, p2, v0

    const/16 v0, 0x4f

    aput-object v2, p2, v0

    const/16 v0, 0x50

    aput-object v2, p2, v0

    const/16 v0, 0x51

    aput-object v2, p2, v0

    const/16 v0, 0x52

    aput-object v2, p2, v0

    const/16 v0, 0x53

    aput-object v2, p2, v0

    const/16 v0, 0x54

    aput-object v2, p2, v0

    const/16 v0, 0x55

    aput-object v2, p2, v0

    const/16 v0, 0x56

    aput-object v2, p2, v0

    const/16 v0, 0x57

    aput-object v2, p2, v0

    const/16 v0, 0x58

    aput-object v2, p2, v0

    const/16 v0, 0x59

    aput-object v2, p2, v0

    const/16 v0, 0x5a

    const-string v1, "\u0661"

    aput-object v1, p2, v0

    const/16 v0, 0x5b

    const-string v1, "\u0662"

    aput-object v1, p2, v0

    const/16 v0, 0x5c

    const-string v1, "\u0663"

    aput-object v1, p2, v0

    const/16 v0, 0x5d

    const-string v1, "\u0664"

    aput-object v1, p2, v0

    const/16 v0, 0x5e

    const-string v1, "\u0665"

    aput-object v1, p2, v0

    const/16 v0, 0x5f

    const-string v1, "\u0666"

    aput-object v1, p2, v0

    const/16 v0, 0x60

    const-string v1, "\u0667"

    aput-object v1, p2, v0

    const/16 v0, 0x61

    const-string v1, "\u0668"

    aput-object v1, p2, v0

    const/16 v0, 0x62

    const-string v1, "\u0669"

    aput-object v1, p2, v0

    const/16 v0, 0x63

    const-string v1, "\u0660"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :sswitch_12
    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x56

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "+"

    aput-object v0, p2, v1

    const-string v0, "\u00d7"

    aput-object v0, p2, v3

    const-string v0, "\u00f7"

    aput-object v0, p2, v4

    const-string v0, "="

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "%"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "_"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u20ac"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u00a3"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u00a5"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u20a9"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "@"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "#"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "$"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "/"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "^"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "&"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "*"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "("

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, ")"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "-"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\'"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\""

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, ":"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, ";"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "!"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "?"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "`"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "~"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\\"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "|"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "<"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, ">"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "{"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "}"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "["

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "]"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u25aa"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u25cb"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u25cf"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u25a1"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u25a0"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u2664"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u2661"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u2662"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u2667"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u2606"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u2606"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u2299"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "\u00b0"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "\u2022"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "\u00a4"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "\u300a"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "\u300b"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, ":-)"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, ":-("

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, ";-)"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, ":-P"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "=-O"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, ":-*"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, ":O"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "B-)"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ":-$"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ":-!"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ":-["

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "O:-)"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ":-\\"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ":\'("

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ":-X"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ":-D"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "o_O"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ":-/"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "x-("

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ":-I"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "<3"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ":-V"

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, "XD"

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ":-Q"

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ":-@"

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ":-C"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ":-O"

    aput-object v1, p2, v0

    const/16 v0, 0x51

    aput-object v2, p2, v0

    const/16 v0, 0x52

    aput-object v2, p2, v0

    const/16 v0, 0x53

    aput-object v2, p2, v0

    const/16 v0, 0x54

    const-string v1, "\u00a1"

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, "\u00bf"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_11
    iget-boolean v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    if-eqz v0, :cond_12

    const/16 v0, 0x32

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    const-string v1, "@"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "$"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "!"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "#"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    const-string v1, "\\"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    aput-object v2, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    const-string v1, "^"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0x36

    new-array p2, v0, [Ljava/lang/String;

    aput-object v2, p2, v1

    aput-object v2, p2, v3

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object v2, p2, v0

    const/4 v0, 0x6

    aput-object v2, p2, v0

    const/4 v0, 0x7

    aput-object v2, p2, v0

    const/16 v0, 0x8

    aput-object v2, p2, v0

    const/16 v0, 0x9

    aput-object v2, p2, v0

    const/16 v0, 0xa

    const-string v1, "@"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "$"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "!"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "#"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    aput-object v2, p2, v0

    const/16 v0, 0xf

    const-string v1, "\\"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    aput-object v2, p2, v0

    const/16 v0, 0x11

    aput-object v2, p2, v0

    const/16 v0, 0x12

    aput-object v2, p2, v0

    const/16 v0, 0x13

    aput-object v2, p2, v0

    const/16 v0, 0x14

    aput-object v2, p2, v0

    const/16 v0, 0x15

    aput-object v2, p2, v0

    const/16 v0, 0x16

    aput-object v2, p2, v0

    const/16 v0, 0x17

    aput-object v2, p2, v0

    const/16 v0, 0x18

    aput-object v2, p2, v0

    const/16 v0, 0x19

    aput-object v2, p2, v0

    const/16 v0, 0x1a

    aput-object v2, p2, v0

    const/16 v0, 0x1b

    aput-object v2, p2, v0

    const/16 v0, 0x1c

    aput-object v2, p2, v0

    const/16 v0, 0x1d

    const-string v1, "^"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    aput-object v2, p2, v0

    const/16 v0, 0x1f

    aput-object v2, p2, v0

    const/16 v0, 0x20

    aput-object v2, p2, v0

    const/16 v0, 0x21

    aput-object v2, p2, v0

    const/16 v0, 0x22

    aput-object v2, p2, v0

    const/16 v0, 0x23

    aput-object v2, p2, v0

    const/16 v0, 0x24

    aput-object v2, p2, v0

    const/16 v0, 0x25

    aput-object v2, p2, v0

    const/16 v0, 0x26

    aput-object v2, p2, v0

    const/16 v0, 0x27

    aput-object v2, p2, v0

    const/16 v0, 0x28

    aput-object v2, p2, v0

    const/16 v0, 0x29

    aput-object v2, p2, v0

    const/16 v0, 0x2a

    aput-object v2, p2, v0

    const/16 v0, 0x2b

    aput-object v2, p2, v0

    const/16 v0, 0x2c

    aput-object v2, p2, v0

    const/16 v0, 0x2d

    aput-object v2, p2, v0

    const/16 v0, 0x2e

    aput-object v2, p2, v0

    const/16 v0, 0x2f

    aput-object v2, p2, v0

    const/16 v0, 0x30

    aput-object v2, p2, v0

    const/16 v0, 0x31

    aput-object v2, p2, v0

    const/16 v0, 0x32

    aput-object v2, p2, v0

    const/16 v0, 0x33

    aput-object v2, p2, v0

    const/16 v0, 0x34

    aput-object v2, p2, v0

    const/16 v0, 0x35

    aput-object v2, p2, v0

    goto/16 :goto_0

    :sswitch_13
    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x56

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "+"

    aput-object v0, p2, v1

    const-string v0, "\u00d7"

    aput-object v0, p2, v3

    const-string v0, "\u00f7"

    aput-object v0, p2, v4

    const-string v0, "="

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "%"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "_"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "\u20ac"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, "\u00a3"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "\u00a5"

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "\u20a9"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "@"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "#"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "$"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "/"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "^"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "&"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "*"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "("

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, ")"

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, ""

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "-"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\'"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\""

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, ":"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, ";"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, "!"

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "?"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "`"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "~"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\\"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "|"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "<"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, ">"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "{"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "}"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "["

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "]"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u25aa"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u25cb"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u25cf"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u25a1"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u25a0"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u2664"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u2661"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u2662"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u2667"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u2606"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u2606"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u2299"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "\u00b0"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "\u2022"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "\u00a4"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "\u300a"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "\u300b"

    aput-object v1, p2, v0

    const/16 v0, 0x36

    const-string v1, ":-)"

    aput-object v1, p2, v0

    const/16 v0, 0x37

    const-string v1, ":-("

    aput-object v1, p2, v0

    const/16 v0, 0x38

    const-string v1, ";-)"

    aput-object v1, p2, v0

    const/16 v0, 0x39

    const-string v1, ":-P"

    aput-object v1, p2, v0

    const/16 v0, 0x3a

    const-string v1, "=-O"

    aput-object v1, p2, v0

    const/16 v0, 0x3b

    const-string v1, ":-*"

    aput-object v1, p2, v0

    const/16 v0, 0x3c

    const-string v1, ":O"

    aput-object v1, p2, v0

    const/16 v0, 0x3d

    const-string v1, "B-)"

    aput-object v1, p2, v0

    const/16 v0, 0x3e

    const-string v1, ":-$"

    aput-object v1, p2, v0

    const/16 v0, 0x3f

    const-string v1, ":-!"

    aput-object v1, p2, v0

    const/16 v0, 0x40

    const-string v1, ":-["

    aput-object v1, p2, v0

    const/16 v0, 0x41

    const-string v1, "O:-)"

    aput-object v1, p2, v0

    const/16 v0, 0x42

    const-string v1, ":-\\"

    aput-object v1, p2, v0

    const/16 v0, 0x43

    const-string v1, ":\'("

    aput-object v1, p2, v0

    const/16 v0, 0x44

    const-string v1, ":-X"

    aput-object v1, p2, v0

    const/16 v0, 0x45

    const-string v1, ":-D"

    aput-object v1, p2, v0

    const/16 v0, 0x46

    const-string v1, "o_O"

    aput-object v1, p2, v0

    const/16 v0, 0x47

    const-string v1, ":-/"

    aput-object v1, p2, v0

    const/16 v0, 0x48

    const-string v1, "x-("

    aput-object v1, p2, v0

    const/16 v0, 0x49

    const-string v1, ":-I"

    aput-object v1, p2, v0

    const/16 v0, 0x4a

    const-string v1, "<3"

    aput-object v1, p2, v0

    const/16 v0, 0x4b

    const-string v1, ":-V"

    aput-object v1, p2, v0

    const/16 v0, 0x4c

    const-string v1, "XD"

    aput-object v1, p2, v0

    const/16 v0, 0x4d

    const-string v1, ":-Q"

    aput-object v1, p2, v0

    const/16 v0, 0x4e

    const-string v1, ":-@"

    aput-object v1, p2, v0

    const/16 v0, 0x4f

    const-string v1, ":-C"

    aput-object v1, p2, v0

    const/16 v0, 0x50

    const-string v1, ":-O"

    aput-object v1, p2, v0

    const/16 v0, 0x51

    aput-object v2, p2, v0

    const/16 v0, 0x52

    aput-object v2, p2, v0

    const/16 v0, 0x53

    aput-object v2, p2, v0

    const/16 v0, 0x54

    const-string v1, "\u00a1"

    aput-object v1, p2, v0

    const/16 v0, 0x55

    const-string v1, "\u00bf"

    aput-object v1, p2, v0

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0x36

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "+"

    aput-object v0, p2, v1

    const-string v0, "\u00d7"

    aput-object v0, p2, v3

    const-string v0, "\u00f7"

    aput-object v0, p2, v4

    const-string v0, "="

    aput-object v0, p2, v5

    const/4 v0, 0x4

    const-string v1, "/"

    aput-object v1, p2, v0

    const/4 v0, 0x5

    const-string v1, "_"

    aput-object v1, p2, v0

    const/4 v0, 0x6

    const-string v1, "<"

    aput-object v1, p2, v0

    const/4 v0, 0x7

    const-string v1, ">"

    aput-object v1, p2, v0

    const/16 v0, 0x8

    const-string v1, "["

    aput-object v1, p2, v0

    const/16 v0, 0x9

    const-string v1, "]"

    aput-object v1, p2, v0

    const/16 v0, 0xa

    const-string v1, "!"

    aput-object v1, p2, v0

    const/16 v0, 0xb

    const-string v1, "@"

    aput-object v1, p2, v0

    const/16 v0, 0xc

    const-string v1, "#"

    aput-object v1, p2, v0

    const/16 v0, 0xd

    const-string v1, "$"

    aput-object v1, p2, v0

    const/16 v0, 0xe

    const-string v1, "%"

    aput-object v1, p2, v0

    const/16 v0, 0xf

    const-string v1, "^"

    aput-object v1, p2, v0

    const/16 v0, 0x10

    const-string v1, "&"

    aput-object v1, p2, v0

    const/16 v0, 0x11

    const-string v1, "*"

    aput-object v1, p2, v0

    const/16 v0, 0x12

    const-string v1, "("

    aput-object v1, p2, v0

    const/16 v0, 0x13

    const-string v1, ")"

    aput-object v1, p2, v0

    const/16 v0, 0x14

    const-string v1, "-"

    aput-object v1, p2, v0

    const/16 v0, 0x15

    const-string v1, "\'"

    aput-object v1, p2, v0

    const/16 v0, 0x16

    const-string v1, "\""

    aput-object v1, p2, v0

    const/16 v0, 0x17

    const-string v1, ":"

    aput-object v1, p2, v0

    const/16 v0, 0x18

    const-string v1, ";"

    aput-object v1, p2, v0

    const/16 v0, 0x19

    const-string v1, ","

    aput-object v1, p2, v0

    const/16 v0, 0x1a

    const-string v1, "?"

    aput-object v1, p2, v0

    const/16 v0, 0x1b

    const-string v1, "`"

    aput-object v1, p2, v0

    const/16 v0, 0x1c

    const-string v1, "~"

    aput-object v1, p2, v0

    const/16 v0, 0x1d

    const-string v1, "\\"

    aput-object v1, p2, v0

    const/16 v0, 0x1e

    const-string v1, "|"

    aput-object v1, p2, v0

    const/16 v0, 0x1f

    const-string v1, "{"

    aput-object v1, p2, v0

    const/16 v0, 0x20

    const-string v1, "}"

    aput-object v1, p2, v0

    const/16 v0, 0x21

    const-string v1, "\u20ac"

    aput-object v1, p2, v0

    const/16 v0, 0x22

    const-string v1, "\u00a3"

    aput-object v1, p2, v0

    const/16 v0, 0x23

    const-string v1, "\u00a5"

    aput-object v1, p2, v0

    const/16 v0, 0x24

    const-string v1, "\u20a9"

    aput-object v1, p2, v0

    const/16 v0, 0x25

    const-string v1, "\u00b0"

    aput-object v1, p2, v0

    const/16 v0, 0x26

    const-string v1, "\u2022"

    aput-object v1, p2, v0

    const/16 v0, 0x27

    const-string v1, "\u25cb"

    aput-object v1, p2, v0

    const/16 v0, 0x28

    const-string v1, "\u25cf"

    aput-object v1, p2, v0

    const/16 v0, 0x29

    const-string v1, "\u25a1"

    aput-object v1, p2, v0

    const/16 v0, 0x2a

    const-string v1, "\u25a0"

    aput-object v1, p2, v0

    const/16 v0, 0x2b

    const-string v1, "\u2664"

    aput-object v1, p2, v0

    const/16 v0, 0x2c

    const-string v1, "\u2661"

    aput-object v1, p2, v0

    const/16 v0, 0x2d

    const-string v1, "\u2662"

    aput-object v1, p2, v0

    const/16 v0, 0x2e

    const-string v1, "\u2667"

    aput-object v1, p2, v0

    const/16 v0, 0x2f

    const-string v1, "\u2606"

    aput-object v1, p2, v0

    const/16 v0, 0x30

    const-string v1, "\u25aa"

    aput-object v1, p2, v0

    const/16 v0, 0x31

    const-string v1, "\u00a4"

    aput-object v1, p2, v0

    const/16 v0, 0x32

    const-string v1, "\u300a"

    aput-object v1, p2, v0

    const/16 v0, 0x33

    const-string v1, "\u300b"

    aput-object v1, p2, v0

    const/16 v0, 0x34

    const-string v1, "\u00a1"

    aput-object v1, p2, v0

    const/16 v0, 0x35

    const-string v1, "\u00bf"

    aput-object v1, p2, v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x36290000 -> :sswitch_11
        -0x2a920000 -> :sswitch_13
        -0x1a920000 -> :sswitch_12
        0x61660000 -> :sswitch_2
        0x61720000 -> :sswitch_c
        0x656c0000 -> :sswitch_5
        0x656e0000 -> :sswitch_0
        0x65730000 -> :sswitch_1
        0x68650000 -> :sswitch_10
        0x68690000 -> :sswitch_a
        0x68790000 -> :sswitch_6
        0x6a610000 -> :sswitch_7
        0x6b6d0000 -> :sswitch_d
        0x6c6f0000 -> :sswitch_e
        0x6d6e0000 -> :sswitch_b
        0x6d794d4d -> :sswitch_9
        0x6e650000 -> :sswitch_a
        0x72750000 -> :sswitch_4
        0x74670000 -> :sswitch_3
        0x74680000 -> :sswitch_f
        0x7a314d4d -> :sswitch_9
        0x7a680000 -> :sswitch_8
    .end sparse-switch
.end method

.method private getCodesArrayList()Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v0, 0x0

    sget-object v2, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    if-ne v2, v4, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardNumberCodes:Landroid/util/SparseArray;

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1

    :cond_0
    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardSymbolCodes:Landroid/util/SparseArray;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardCodes:Landroid/util/SparseArray;

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mMode:I

    if-ne v2, v4, :cond_5

    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    if-ne v2, v3, :cond_4

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguagePhonepadSymbolsCodes:Landroid/util/SparseArray;

    :cond_3
    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguagePhonepadCodes:Landroid/util/SparseArray;

    goto :goto_2

    :cond_5
    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    if-ne v2, v3, :cond_7

    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mMode:I

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mMode:I

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mMode:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mMode:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    :cond_6
    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageSymbolsCodes:Landroid/util/SparseArray;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageCodes:Landroid/util/SparseArray;

    goto :goto_2
.end method

.method public static declared-synchronized getInstance()Lcom/ime/framework/view/keyboard/KeyboardKeyMap;
    .locals 2

    const-class v1, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    sput-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->sInstance:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-direct {v0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;-><init>()V

    sput-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->sInstance:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->sInstance:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-direct {v0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->initialize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->sInstance:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLabelsArrayList()Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v0, 0x0

    sget-object v2, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    if-ne v2, v4, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardNumberLabels:Landroid/util/SparseArray;

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1

    :cond_0
    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardSymbolLabels:Landroid/util/SparseArray;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardLabels:Landroid/util/SparseArray;

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mMode:I

    if-ne v2, v4, :cond_5

    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    if-ne v2, v3, :cond_4

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguagePhonepadSymbolsLabels:Landroid/util/SparseArray;

    :cond_3
    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguagePhonepadLabels:Landroid/util/SparseArray;

    goto :goto_2

    :cond_5
    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    if-ne v2, v3, :cond_7

    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mMode:I

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mMode:I

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mMode:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mMode:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_6

    sget-object v2, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    :cond_6
    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageSymbolsLabels:Landroid/util/SparseArray;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageLabels:Landroid/util/SparseArray;

    goto :goto_2
.end method

.method private getLanguageCodes(Landroid/util/SparseArray;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/high16 v3, 0x656e0000

    const/4 v0, 0x0

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    invoke-direct {p0, p1, v1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillCodesArray(Landroid/util/SparseArray;I)V

    :cond_0
    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v1, v1

    if-le v1, p2, :cond_1

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v0, v1, p2

    :cond_1
    if-nez v0, :cond_4

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mDefaultLanguage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mDefaultLanguage:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mDefaultLanguage:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mDefaultLanguage:I

    invoke-direct {p0, p1, v1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillCodesArray(Landroid/util/SparseArray;I)V

    :cond_2
    sget-object v1, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    invoke-direct {p0, p1, v1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillCodesArray(Landroid/util/SparseArray;I)V

    :cond_3
    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mDefaultLanguage:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v1, v1

    if-le v1, p2, :cond_4

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mDefaultLanguage:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v0, v1, p2

    :cond_4
    :goto_0
    return-object v0

    :cond_5
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-direct {p0, p1, v3}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillCodesArray(Landroid/util/SparseArray;I)V

    :cond_6
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v1, v1

    if-le v1, p2, :cond_4

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v0, v1, p2

    goto :goto_0
.end method

.method private getLanguageLabels(Landroid/util/SparseArray;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/high16 v3, 0x656e0000

    const/4 v0, 0x0

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    invoke-direct {p0, p1, v1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillLabelsArray(Landroid/util/SparseArray;I)V

    :cond_0
    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v1, v1

    if-le v1, p2, :cond_1

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v0, v1, p2

    :cond_1
    if-nez v0, :cond_4

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mDefaultLanguage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mDefaultLanguage:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mDefaultLanguage:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mDefaultLanguage:I

    invoke-direct {p0, p1, v1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillLabelsArray(Landroid/util/SparseArray;I)V

    :cond_2
    sget-object v1, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    invoke-direct {p0, p1, v1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillLabelsArray(Landroid/util/SparseArray;I)V

    :cond_3
    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mDefaultLanguage:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v1, v1

    if-le v1, p2, :cond_4

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mDefaultLanguage:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v0, v1, p2

    :cond_4
    :goto_0
    return-object v0

    :cond_5
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-direct {p0, p1, v3}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->fillLabelsArray(Landroid/util/SparseArray;I)V

    :cond_6
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v1, v1

    if-le v1, p2, :cond_4

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v0, v1, p2

    goto :goto_0
.end method

.method private initialize()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsKorMode:Z

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mIsNumberRowDisable:Z

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_CODES:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_CODES:[I

    aget v1, v3, v0

    iget-object v3, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageCodes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_LABELS:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_LABELS:[I

    aget v1, v3, v0

    iget-object v3, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageLabels:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_SYMBOLS_CODES:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_SYMBOLS_CODES:[I

    aget v1, v3, v0

    iget-object v3, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageSymbolsCodes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_SYMBOLS_LABELS:[I

    array-length v3, v3

    if-ge v0, v3, :cond_3

    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_SYMBOLS_LABELS:[I

    aget v1, v3, v0

    iget-object v3, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageSymbolsLabels:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_4
    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_PHONEPAD_CODES_NORMAL:[I

    array-length v3, v3

    if-ge v0, v3, :cond_4

    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_PHONEPAD_CODES_NORMAL:[I

    aget v1, v3, v0

    iget-object v3, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguagePhonepadCodes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_5
    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_PHONEPAD_LABELS_NORMAL:[I

    array-length v3, v3

    if-ge v0, v3, :cond_5

    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_PHONEPAD_LABELS_NORMAL:[I

    aget v1, v3, v0

    iget-object v3, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguagePhonepadLabels:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_6
    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_PHONEPAD_SYMBOLS_CODES:[I

    array-length v3, v3

    if-ge v0, v3, :cond_6

    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_PHONEPAD_SYMBOLS_CODES:[I

    aget v1, v3, v0

    iget-object v3, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguagePhonepadSymbolsCodes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_7
    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->LANGUAGES_PHONEPAD_SYMBOLS_LABELS:[I

    array-length v3, v3

    if-ge v0, v3, :cond_7

    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->LANGUAGES_PHONEPAD_SYMBOLS_LABELS:[I

    aget v1, v3, v0

    iget-object v3, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguagePhonepadSymbolsLabels:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_8
    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_MOBILE_KEYBOARD_CODES:[I

    array-length v3, v3

    if-ge v0, v3, :cond_8

    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_MOBILE_KEYBOARD_CODES:[I

    aget v1, v3, v0

    iget-object v3, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardCodes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_9
    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->ANGUAGES_MOBILE_KEYBOARD_LABELS:[I

    array-length v3, v3

    if-ge v0, v3, :cond_9

    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->ANGUAGES_MOBILE_KEYBOARD_LABELS:[I

    aget v1, v3, v0

    iget-object v3, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardLabels:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_a
    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_MOBILE_KEYBOARD_NUMBER_CODES:[I

    array-length v3, v3

    if-ge v0, v3, :cond_a

    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_MOBILE_KEYBOARD_NUMBER_CODES:[I

    aget v1, v3, v0

    iget-object v3, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardNumberCodes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    :goto_b
    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->LANGUAGES_MOBILE_KEYBOARD_NUMBER_LABELS:[I

    array-length v3, v3

    if-ge v0, v3, :cond_b

    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->LANGUAGES_MOBILE_KEYBOARD_NUMBER_LABELS:[I

    aget v1, v3, v0

    iget-object v3, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardNumberLabels:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    :goto_c
    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_MOBILE_KEYBOARD_SYMBOL_CODES:[I

    array-length v3, v3

    if-ge v0, v3, :cond_c

    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->AVAILABLE_LANGUAGES_MOBILE_KEYBOARD_SYMBOL_CODES:[I

    aget v1, v3, v0

    iget-object v3, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardSymbolCodes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_c
    const/4 v0, 0x0

    :goto_d
    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->LANGUAGES_MOBILE_KEYBOARD_SYMBOL_LABELS:[I

    array-length v3, v3

    if-ge v0, v3, :cond_d

    sget-object v3, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->LANGUAGES_MOBILE_KEYBOARD_SYMBOL_LABELS:[I

    aget v1, v3, v0

    iget-object v3, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardSymbolLabels:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_d
    return-void
.end method


# virtual methods
.method public getCodeValues(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->getCodesArrayList()Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "SamsungIME"

    const-string v3, " codesArray is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->getLanguageCodes(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0
.end method

.method public getLabelValues(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->getLabelsArrayList()Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "SamsungIME"

    const-string v3, " labelsArray is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->getLanguageLabels(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0
.end method

.method public getPopupCharsString(I)Ljava/lang/CharSequence;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x2

    sget-object v4, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v4

    const v5, 0x656e5553

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v4

    const v5, 0x656e4742

    if-ne v4, v5, :cond_1

    :cond_0
    move-object v2, v3

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    sget v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->GAP:I

    const/4 v1, 0x0

    iget v4, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    iget v4, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    if-ne v4, v6, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguagePhonepadSymbolsLabels:Landroid/util/SparseArray;

    :goto_1
    if-nez v1, :cond_5

    const-string v4, "SamsungIME"

    const-string v5, " labelsArray is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguagePhonepadLabels:Landroid/util/SparseArray;

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    if-ne v4, v6, :cond_4

    iget-object v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageSymbolsLabels:Landroid/util/SparseArray;

    sget v0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->GAP_QWERTY_SYMBOLS:I

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageLabels:Landroid/util/SparseArray;

    goto :goto_1

    :cond_5
    add-int v3, p1, v0

    invoke-direct {p0, v1, v3}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->getLanguageLabels(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public initializeKeyboardKeyMap()V
    .locals 2

    const-string v0, "SamsungIME_MKDB"

    const-string v1, "[KeyboardKeyMap] clear the current KeyboardKeyMap and re-initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageCodes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageLabels:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageSymbolsCodes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageSymbolsLabels:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguagePhonepadCodes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguagePhonepadLabels:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguagePhonepadSymbolsCodes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguagePhonepadSymbolsLabels:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardCodes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardLabels:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardNumberCodes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardNumberLabels:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardSymbolCodes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageMobileKeyboardSymbolLabels:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->initialize()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    iput v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mMode:I

    iput v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mDefaultLanguage:I

    return-void
.end method

.method public resetLanguage(III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->resetLanguageCodes(III)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->resetLanguageLabels(III)V

    return-void
.end method

.method public resetLanguageCodes(III)V
    .locals 3

    invoke-direct {p0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->getCodesArrayList()Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "SamsungIME"

    const-string v2, " codesArray is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public resetLanguageLabels(III)V
    .locals 3

    invoke-direct {p0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->getLabelsArrayList()Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "SamsungIME"

    const-string v2, " codesArray is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setDefaultLanguage(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mDefaultLanguage:I

    return-void
.end method

.method public setLanguageAndMode(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    return-void
.end method

.method public setLanguageAndMode(III)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mLanguageId:I

    iput p2, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mMode:I

    iput p3, p0, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->mRange:I

    return-void
.end method
