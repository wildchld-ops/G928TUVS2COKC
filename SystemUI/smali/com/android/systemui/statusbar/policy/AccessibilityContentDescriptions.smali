.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIFI_NO_CONNECTION:I = 0x7f0d0273


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x5

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d0266
        0x7f0d0267
        0x7f0d0268
        0x7f0d0269
        0x7f0d026c
    .end array-data

    :array_1
    .array-data 4
        0x7f0d026d
        0x7f0d026e
        0x7f0d026f
        0x7f0d0270
        0x7f0d0271
    .end array-data

    :array_2
    .array-data 4
        0x7f0d0273
        0x7f0d0274
        0x7f0d0275
        0x7f0d0276
        0x7f0d0277
    .end array-data

    :array_3
    .array-data 4
        0x7f0d0266
        0x7f0d0267
        0x7f0d0268
        0x7f0d0269
        0x7f0d026a
        0x7f0d026c
    .end array-data

    :array_4
    .array-data 4
        0x7f0d0266
        0x7f0d0267
        0x7f0d0268
        0x7f0d0269
        0x7f0d026a
        0x7f0d026b
        0x7f0d026c
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
