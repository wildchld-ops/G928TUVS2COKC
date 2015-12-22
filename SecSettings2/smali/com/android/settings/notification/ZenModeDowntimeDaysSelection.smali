.class public Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;
.super Landroid/widget/ScrollView;
.source "ZenModeDowntimeDaysSelection.java"


# static fields
.field public static final DAYS:[I


# instance fields
.field private DAY_FORMAT:Ljava/text/SimpleDateFormat;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mDays:Landroid/util/SparseBooleanArray;

.field private mDaysCheckBox:[Landroid/widget/CheckBox;

.field private mDisableListeners:Z

.field private final mLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 15

    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v11, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    const/16 v11, 0x8

    new-array v11, v11, [Landroid/widget/CheckBox;

    iput-object v11, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;

    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00d4

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00d5

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iget-object v11, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v10, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v11, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->addView(Landroid/view/View;)V

    invoke-static/range {p2 .. p2}, Landroid/service/notification/ZenModeConfig;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    :goto_0
    array-length v11, v3

    if-ge v5, v11, :cond_0

    iget-object v11, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    aget v12, v3, v5

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v11, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "EEEE"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isChinaHKTWLocale(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "EEE"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v5, 0x0

    :goto_1
    sget-object v11, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    array-length v11, v11

    if-ge v5, v11, :cond_6

    sget-object v11, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    aget v2, v11, v5

    const v11, 0x7f040265

    const/4 v12, 0x0

    invoke-virtual {v6, v11, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v11, 0x7f1005a2

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_2

    const v11, 0x7f1005a3

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v11, 0x7f1005a1

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    new-instance v11, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$1;

    invoke-direct {v11, p0}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$1;-><init>(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)V

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v5, :cond_4

    const/4 v11, 0x7

    invoke-virtual {v0, v11, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v11, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v11, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$2;

    invoke-direct {v11, p0, v2}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$2;-><init>(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;I)V

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_2
    iget-object v11, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;

    aput-object v1, v11, v5

    iget-object v11, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-nez v5, :cond_3

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->requestFocus()Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const v11, 0x7f0a0ed4

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setText(I)V

    iget-object v11, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v11}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v9

    iget-object v11, v9, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    if-eqz v11, :cond_5

    const-string v11, "days:1,2,3,4,5,6,7"

    iget-object v12, v9, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_5
    new-instance v11, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$3;

    invoke-direct {v11, p0}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$3;-><init>(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)V

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDisableListeners:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->getMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)[Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;

    return-object v0
.end method

.method private getMode()Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "days:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    const/4 v4, 0x0

    :goto_3
    return-object v4

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 3

    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method protected onChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
