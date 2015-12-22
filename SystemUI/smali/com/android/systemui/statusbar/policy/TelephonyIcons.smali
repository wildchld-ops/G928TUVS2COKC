.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final DATA_1X:[[I

.field static final DATA_2G:[[I

.field static final DATA_3G:[[I

.field static final DATA_3G_PLUS:[[I

.field static final DATA_3G_SPR:[[I

.field static final DATA_4G:[[I

.field static final DATA_4G_ATT:[[I

.field static final DATA_4G_LTE:[[I

.field static final DATA_4G_LTE_LTN:[[I

.field static final DATA_4G_LTE_PLUS:[[I

.field static final DATA_4G_PLUS:[[I

.field static final DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

.field static final DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

.field static final DATA_DC:[[I

.field static final DATA_E:[[I

.field static final DATA_G:[[I

.field static final DATA_GSM_SPR:[[I

.field static final DATA_H:[[I

.field static final DATA_H_PLUS:[[I

.field static final DATA_LTE:[[I

.field static final DATA_LTE_ATT:[[I

.field static final DATA_LTE_PLUS:[[I

.field static final DATA_LTE_SPR:[[I

.field static final DATA_SIGNAL_STRENGTH:[[I

.field static final DATA_SIGNAL_STRENGTH_CTC:[I

.field static final DATA_SIGNAL_STRENGTH_CTC_2:[I

.field static final DATA_SIGNAL_STRENGTH_PURE:[[I

.field static final DATA_TMO:[[I

.field static final DATA_TYPE_1X:I = 0x8

.field static final DATA_TYPE_2G:I = 0x3

.field static final DATA_TYPE_3G:I = 0x4

.field static final DATA_TYPE_4G:I = 0x5

.field static final DATA_TYPE_E:I = 0x2

.field static final DATA_TYPE_G:I = 0x1

.field static final DATA_TYPE_H:I = 0x6

.field static final DATA_TYPE_HP:I = 0x7

.field static final DATA_TYPE_LTE:I = 0x9

.field static final DATA_TYPE_UNKNOWN:I = 0x0

.field static final DEBUG:Z = true

.field static final DEFAULT_SUB:I = 0x0

.field static final FLIGHT_MODE_ICON:I = 0x7f020485

.field static final ICON_1X:I = 0x7f0204eb

.field static final ICON_3G:I = 0x7f0204ed

.field static final ICON_4G:I = 0x7f0204ee

.field static final ICON_LTE:I = 0x7f0204f5

.field static final NS:Ljava/lang/String; = "com.android.systemui"

.field static final QS_DATA_1X:[I

.field static final QS_DATA_3G:[I

.field static final QS_DATA_4G:[I

.field static final QS_DATA_E:[I

.field static final QS_DATA_G:[I

.field static final QS_DATA_H:[I

.field static final QS_DATA_LTE:[I

.field static final QS_DATA_R:[I

.field static final QS_ICON_1X:I = 0x7f020225

.field static final QS_ICON_3G:I = 0x7f020228

.field static final QS_ICON_4G:I = 0x7f02022a

.field static final QS_ICON_LTE:I = 0x7f020235

.field static final QS_TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final ROAMING_ICON:I = 0x7f0204f6

.field static final SIGNAL_STRENGTH_TYPE_1X:I = 0x6

.field static final SIGNAL_STRENGTH_TYPE_3G:I = 0x2

.field static final SIGNAL_STRENGTH_TYPE_4G:I = 0x3

.field static final SIGNAL_STRENGTH_TYPE_CDMA:I = 0x7

.field static final SIGNAL_STRENGTH_TYPE_E:I = 0x1

.field static final SIGNAL_STRENGTH_TYPE_G:I = 0x0

.field static final SIGNAL_STRENGTH_TYPE_H:I = 0x4

.field static final SIGNAL_STRENGTH_TYPE_HP:I = 0x5

.field static final SIGNAL_STRENGTH_TYPE_UMTS:I = 0x8

.field static final TAG:Ljava/lang/String; = "TelephonyIcons"

.field static final TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_CTC:[I

.field static final TELEPHONY_SIGNAL_STRENGTH_CTC_2:[I

.field static final TELEPHONY_SIGNAL_STRENGTH_FOCUS:[I

.field static final TELEPHONY_SIGNAL_STRENGTH_PURE:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

.field private static isInitiated:Z

.field static mDataActivityArray:[Ljava/lang/String;

.field static mDataTypeArray:[Ljava/lang/String;

.field static mDataTypeDescriptionArray:[Ljava/lang/String;

.field static mDataTypeGenerationArray:[Ljava/lang/String;

.field static mDataTypeGenerationDescArray:[Ljava/lang/String;

.field static mNoSimArray:[Ljava/lang/String;

.field private static mRes:Landroid/content/res/Resources;

.field static mSelectedDataActivityIndex:[I

.field static mSelectedDataTypeDesc:Ljava/lang/String;

.field static mSelectedDataTypeIcon:[I

.field static mSelectedQSDataTypeIcon:[I

.field static mSelectedSignalStreagthIndex:[I

.field static mSignalNullArray:[Ljava/lang/String;

.field static mSignalStrengthArray:[Ljava/lang/String;

.field static mSignalStrengthDesc:[Ljava/lang/String;

.field static mSignalStrengthRoamingArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x4

    new-array v0, v3, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    new-array v0, v3, [[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    new-array v0, v3, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    new-array v0, v6, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC_2:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_R:[I

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_CTC:[I

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC_2:[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_CTC_2:[I

    new-array v0, v3, [[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    new-array v0, v3, [[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    new-array v0, v6, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[I

    new-array v0, v3, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_PURE:[[I

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_PURE:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_PURE:[[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    new-array v0, v3, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    new-array v0, v3, [I

    fill-array-data v0, :array_15

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    new-array v0, v3, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1b

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    new-array v0, v3, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_21

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    new-array v0, v3, [I

    fill-array-data v0, :array_23

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_25

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    new-array v0, v3, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    sput-boolean v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_27

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_28

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_29

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_2a

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_PLUS:[[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2b

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_2c

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_ATT:[[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2d

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_2e

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_ATT:[[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2f

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_30

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_31

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_32

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_GSM_SPR:[[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_33

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_34

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_SPR:[[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_35

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_36

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_37

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_38

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_39

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_3a

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_PLUS:[[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_3b

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_3c

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_LTN:[[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_3d

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_3e

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_2G:[[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_3f

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_40

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_41

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_42

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DC:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0205d2
        0x7f0205fa
        0x7f020626
        0x7f02064e
        0x7f02067a
    .end array-data

    :array_1
    .array-data 4
        0x7f0205d2
        0x7f0205fa
        0x7f020626
        0x7f02064e
        0x7f02067a
    .end array-data

    :array_2
    .array-data 4
        0x7f020223
        0x7f020224
        0x7f020226
        0x7f020227
        0x7f020229
        0x7f020229
        0x7f020229
    .end array-data

    :array_3
    .array-data 4
        0x7f02022d
        0x7f02022e
        0x7f02022f
        0x7f020230
        0x7f020231
        0x7f020231
        0x7f020231
    .end array-data

    :array_4
    .array-data 4
        0x7f0205c1
        0x7f0205e9
        0x7f020615
        0x7f02063d
        0x7f020669
    .end array-data

    :array_5
    .array-data 4
        0x7f0205c1
        0x7f0205e9
        0x7f020615
        0x7f02063d
        0x7f020669
    .end array-data

    :array_6
    .array-data 4
        0x7f0205d3
        0x7f0205fb
        0x7f020627
        0x7f02064f
        0x7f02067b
    .end array-data

    :array_7
    .array-data 4
        0x7f0205a8
        0x7f0205a9
        0x7f0205aa
        0x7f0205ab
        0x7f0205ac
        0x7f0205ad
        0x7f0205ae
        0x7f0205af
        0x7f0205b0
        0x7f0205b1
        0x7f0205b2
        0x7f0205b3
        0x7f0205b4
        0x7f0205b5
        0x7f0205b6
        0x7f0205b7
        0x7f0205b8
        0x7f0205b9
        0x7f0205ba
        0x7f0205bb
        0x7f0205bc
        0x7f0205bd
        0x7f0205be
        0x7f0205bf
        0x7f0205c0
    .end array-data

    :array_8
    .array-data 4
        0x7f020238
        0x7f020238
    .end array-data

    :array_9
    .array-data 4
        0x7f02085e
        0x7f020860
        0x7f020862
        0x7f020864
        0x7f020866
        0x7f020868
    .end array-data

    :array_a
    .array-data 4
        0x7f02085e
        0x7f020860
        0x7f020862
        0x7f020864
        0x7f020866
        0x7f020868
    .end array-data

    :array_b
    .array-data 4
        0x7f02086a
        0x7f02086c
        0x7f02086e
        0x7f020870
        0x7f020872
        0x7f020874
        0x7f020876
    .end array-data

    :array_c
    .array-data 4
        0x7f02086a
        0x7f02086c
        0x7f02086e
        0x7f020870
        0x7f020872
        0x7f020874
        0x7f020876
    .end array-data

    :array_d
    .array-data 4
        0x7f020692
        0x7f020694
        0x7f020696
        0x7f020698
        0x7f02069a
    .end array-data

    :array_e
    .array-data 4
        0x7f0206c8
        0x7f0206ca
        0x7f0206cc
        0x7f0206ce
        0x7f0206d0
    .end array-data

    :array_f
    .array-data 4
        0x7f0206be
        0x7f0206c0
        0x7f0206c2
        0x7f0206c4
        0x7f0206c6
    .end array-data

    :array_10
    .array-data 4
        0x7f0204f2
        0x7f0204f2
        0x7f0204f2
        0x7f0204f2
    .end array-data

    :array_11
    .array-data 4
        0x7f0204f2
        0x7f0204f2
        0x7f0204f2
        0x7f0204f2
    .end array-data

    :array_12
    .array-data 4
        0x7f020232
        0x7f020232
    .end array-data

    :array_13
    .array-data 4
        0x7f0204ed
        0x7f0204ed
        0x7f0204ed
        0x7f0204ed
    .end array-data

    :array_14
    .array-data 4
        0x7f0204ed
        0x7f0204ed
        0x7f0204ed
        0x7f0204ed
    .end array-data

    :array_15
    .array-data 4
        0x7f020228
        0x7f020228
    .end array-data

    :array_16
    .array-data 4
        0x7f0204f1
        0x7f0204f1
        0x7f0204f1
        0x7f0204f1
    .end array-data

    :array_17
    .array-data 4
        0x7f0204f1
        0x7f0204f1
        0x7f0204f1
        0x7f0204f1
    .end array-data

    :array_18
    .array-data 4
        0x7f02022c
        0x7f02022c
    .end array-data

    :array_19
    .array-data 4
        0x7f0204f3
        0x7f0204f3
        0x7f0204f3
        0x7f0204f3
    .end array-data

    :array_1a
    .array-data 4
        0x7f0204f3
        0x7f0204f3
        0x7f0204f3
        0x7f0204f3
    .end array-data

    :array_1b
    .array-data 4
        0x7f020233
        0x7f020233
    .end array-data

    :array_1c
    .array-data 4
        0x7f0204d6
        0x7f0204d6
        0x7f0204d6
        0x7f0204d6
    .end array-data

    :array_1d
    .array-data 4
        0x7f0204d6
        0x7f0204d6
        0x7f0204d6
        0x7f0204d6
    .end array-data

    :array_1e
    .array-data 4
        0x7f0204eb
        0x7f0204eb
        0x7f0204eb
        0x7f0204eb
    .end array-data

    :array_1f
    .array-data 4
        0x7f0204eb
        0x7f0204eb
        0x7f0204eb
        0x7f0204eb
    .end array-data

    :array_20
    .array-data 4
        0x7f020225
        0x7f020225
    .end array-data

    :array_21
    .array-data 4
        0x7f0204ee
        0x7f0204ee
        0x7f0204ee
        0x7f0204ee
    .end array-data

    :array_22
    .array-data 4
        0x7f0204ee
        0x7f0204ee
        0x7f0204ee
        0x7f0204ee
    .end array-data

    :array_23
    .array-data 4
        0x7f02022a
        0x7f02022a
    .end array-data

    :array_24
    .array-data 4
        0x7f0204f5
        0x7f0204f5
        0x7f0204f5
        0x7f0204f5
    .end array-data

    :array_25
    .array-data 4
        0x7f0204f5
        0x7f0204f5
        0x7f0204f5
        0x7f0204f5
    .end array-data

    :array_26
    .array-data 4
        0x7f020235
        0x7f020235
    .end array-data

    :array_27
    .array-data 4
        0x7f0204b4
        0x7f0204b4
        0x7f0204b4
        0x7f0204b4
    .end array-data

    :array_28
    .array-data 4
        0x7f0204b4
        0x7f0204b4
        0x7f0204b4
        0x7f0204b4
    .end array-data

    :array_29
    .array-data 4
        0x7f0204b7
        0x7f0204b7
        0x7f0204b7
        0x7f0204b7
    .end array-data

    :array_2a
    .array-data 4
        0x7f0204b7
        0x7f0204b7
        0x7f0204b7
        0x7f0204b7
    .end array-data

    :array_2b
    .array-data 4
        0x7f0204b2
        0x7f020500
        0x7f020527
        0x7f020508
    .end array-data

    :array_2c
    .array-data 4
        0x7f0204b2
        0x7f020500
        0x7f020527
        0x7f020508
    .end array-data

    :array_2d
    .array-data 4
        0x7f0204d9
        0x7f020500
        0x7f020527
        0x7f020508
    .end array-data

    :array_2e
    .array-data 4
        0x7f0204d9
        0x7f020500
        0x7f020527
        0x7f020508
    .end array-data

    :array_2f
    .array-data 4
        0x7f02049a
        0x7f02048c
        0x7f02048c
        0x7f02048c
    .end array-data

    :array_30
    .array-data 4
        0x7f02049a
        0x7f02048c
        0x7f02048c
        0x7f02048c
    .end array-data

    :array_31
    .array-data 4
        0x7f020499
        0x7f02048c
        0x7f02048c
        0x7f02048c
    .end array-data

    :array_32
    .array-data 4
        0x7f020499
        0x7f02048c
        0x7f02048c
        0x7f02048c
    .end array-data

    :array_33
    .array-data 4
        0x7f020489
        0x7f02049b
        0x7f02049b
        0x7f02049b
    .end array-data

    :array_34
    .array-data 4
        0x7f020489
        0x7f02049b
        0x7f02049b
        0x7f02049b
    .end array-data

    :array_35
    .array-data 4
        0x7f0206b1
        0x7f0206ac
        0x7f0206bc
        0x7f0206ae
    .end array-data

    :array_36
    .array-data 4
        0x7f0206b1
        0x7f0206ac
        0x7f0206bc
        0x7f0206ae
    .end array-data

    :array_37
    .array-data 4
        0x7f0204db
        0x7f0204db
        0x7f0204db
        0x7f0204db
    .end array-data

    :array_38
    .array-data 4
        0x7f0204db
        0x7f0204db
        0x7f0204db
        0x7f0204db
    .end array-data

    :array_39
    .array-data 4
        0x7f0204b9
        0x7f0204b9
        0x7f0204b9
        0x7f0204b9
    .end array-data

    :array_3a
    .array-data 4
        0x7f0204b9
        0x7f0204b9
        0x7f0204b9
        0x7f0204b9
    .end array-data

    :array_3b
    .array-data 4
        0x7f0204b6
        0x7f0204b6
        0x7f0204b6
        0x7f0204b6
    .end array-data

    :array_3c
    .array-data 4
        0x7f0204ef
        0x7f0204ef
        0x7f0204ef
        0x7f0204ef
    .end array-data

    :array_3d
    .array-data 4
        0x7f0204a1
        0x7f0204a1
        0x7f0204a1
        0x7f0204a1
    .end array-data

    :array_3e
    .array-data 4
        0x7f0204ec
        0x7f0204ec
        0x7f0204ec
        0x7f0204ec
    .end array-data

    :array_3f
    .array-data 4
        0x7f0204ab
        0x7f0204ab
        0x7f0204ab
        0x7f0204ab
    .end array-data

    :array_40
    .array-data 4
        0x7f0204ab
        0x7f0204ab
        0x7f0204ab
        0x7f0204ab
    .end array-data

    :array_41
    .array-data 4
        0x7f0204c0
        0x7f0204c0
        0x7f0204c0
        0x7f0204c0
    .end array-data

    :array_42
    .array-data 4
        0x7f0204f0
        0x7f0204f0
        0x7f0204f0
        0x7f0204f0
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDataActivity(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getDataActivity(II)I

    move-result v0

    return v0
.end method

.method static getDataActivity(II)I
    .locals 8

    const/4 v7, 0x0

    const-string v2, "TelephonyIcons"

    const-string v3, "getDataActivity, sub=%d, activity=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    aget-object v4, v4, p0

    const-string v5, "com.android.systemui"

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    aget v4, v4, p0

    aget-object v4, v0, v4

    const-string v5, "com.android.systemui"

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v3, v1, p1

    const-string v4, "com.android.systemui"

    invoke-virtual {v2, v3, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method static getDataTypeDesc()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    return-object v0
.end method

.method static getDataTypeIcon()I
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method static getDataTypeIcon(I)I
    .locals 6

    const-string v0, "TelephonyIcons"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataTypeIcon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sub=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    aget v0, v0, p0

    return v0
.end method

.method static getNoSimIcon()I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNoSimIcon(I)I

    move-result v0

    return v0
.end method

.method static getNoSimIcon(I)I
    .locals 5

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mNoSimArray:[Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mNoSimArray:[Ljava/lang/String;

    aget-object v1, v2, p0

    const-string v2, "TelephonyIcons"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no sim icon name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const/4 v3, 0x0

    const-string v4, "com.android.systemui"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static getQSDataTypeIcon()I
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method static getQSDataTypeIcon(I)I
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    aget v0, v0, p0

    return v0
.end method

.method static getSignalNullIcon()I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalNullIcon(I)I

    move-result v0

    return v0
.end method

.method static getSignalNullIcon(I)I
    .locals 5

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    aget-object v1, v2, p0

    const-string v2, "TelephonyIcons"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null signal icon name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const/4 v3, 0x0

    const-string v4, "com.android.systemui"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static getSignalStrengthDes(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalStrengthDes(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSignalStrengthDes(II)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthDesc:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method static getSignalStrengthIcon(IIIZ)I
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSignalStrengthIcon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sub=%d, inetCondition=%d, level=%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    aget-object v5, v5, p0

    const-string v6, "com.android.systemui"

    invoke-virtual {v4, v5, v9, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "TelephonyIcons"

    const-string v4, "signalStrengthArray.length = %d"

    new-array v5, v11, [Ljava/lang/Object;

    array-length v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    aget v5, v5, p0

    aget-object v5, v2, v5

    const-string v6, "com.android.systemui"

    invoke-virtual {v4, v5, v9, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string v3, "TelephonyIcons"

    const-string v4, "selectedTypeArray.length = %d"

    new-array v5, v11, [Ljava/lang/Object;

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v1, p1

    const-string v6, "com.android.systemui"

    invoke-virtual {v4, v5, v9, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v3, "TelephonyIcons"

    const-string v4, "inetArray.length = %d"

    new-array v5, v11, [Ljava/lang/Object;

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v4, v0, p2

    const-string v5, "com.android.systemui"

    invoke-virtual {v3, v4, v9, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3

    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthRoamingArray:[Ljava/lang/String;

    aget-object v5, v5, p0

    const-string v6, "com.android.systemui"

    invoke-virtual {v4, v5, v9, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static getSignalStrengthIcon(IIZ)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalStrengthIcon(IIIZ)I

    move-result v0

    return v0
.end method

.method static initAll(Landroid/content/Context;)V
    .locals 4

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    if-eqz v1, :cond_0

    const-string v1, "TelephonyIcons"

    const-string v2, "initAll, already initiated!"

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthRoamingArray:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mNoSimArray:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthDesc:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    :cond_4
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    const-string v1, "TelephonyIcons"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAll, exception happened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static updateDataType(IIZZZI)V
    .locals 9

    const-string v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sub=%d, type=%d, inetCondition=%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " showAtLeast3G="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " show4GforLte="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hspaDistinguishable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    aget-object v2, v3, p0

    const-string v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data type item name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const/4 v4, 0x0

    const-string v5, "com.android.systemui"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data type item id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    const-string v3, ""

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    :goto_0
    const-string v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mSelectedDataTypeIcon[%d]=%d, mSelectedDataActivityIndex=%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    aget v8, v8, p0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    aget v8, v8, p0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    if-nez p2, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    goto :goto_0

    :cond_0
    :pswitch_2
    if-nez p2, :cond_1

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    aget v4, v4, p5

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x1

    aput v4, v3, p0

    goto/16 :goto_0

    :cond_1
    :pswitch_3
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/16 v4, 0x8

    aput v4, v3, p0

    goto/16 :goto_0

    :pswitch_4
    if-eqz p4, :cond_2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x6

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    aget v4, v4, p5

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    goto/16 :goto_0

    :cond_2
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    :pswitch_5
    if-eqz p4, :cond_3

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x7

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    aget v4, v4, p5

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x5

    aput v4, v3, p0

    goto/16 :goto_0

    :cond_3
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    :pswitch_6
    if-nez p2, :cond_4

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v4, 0x8

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    aget v4, v4, p5

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x7

    aput v4, v3, p0

    goto/16 :goto_0

    :cond_4
    :pswitch_7
    if-nez p2, :cond_5

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v4, 0x8

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    aget v4, v4, p5

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x6

    aput v4, v3, p0

    goto/16 :goto_0

    :cond_5
    :pswitch_8
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    :pswitch_9
    if-eqz p3, :cond_6

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x5

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x3

    aput v4, v3, p0

    goto/16 :goto_0

    :cond_6
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v4, 0x9

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    aget v4, v4, p5

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x3

    aput v4, v3, p0

    goto/16 :goto_0

    :pswitch_a
    if-nez p2, :cond_7

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x1

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    goto/16 :goto_0

    :cond_7
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_a
        :pswitch_3
    .end packed-switch
.end method

.method static updateDataType(IZZZI)V
    .locals 6

    const/4 v0, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->updateDataType(IIZZZI)V

    return-void
.end method
