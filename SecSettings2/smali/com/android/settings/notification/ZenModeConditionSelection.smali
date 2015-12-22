.class public Lcom/android/settings/notification/ZenModeConditionSelection;
.super Landroid/widget/RadioGroup;
.source "ZenModeConditionSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeConditionSelection$H;
    }
.end annotation


# instance fields
.field private mCondition:Landroid/service/notification/Condition;

.field private final mConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/settings/notification/ZenModeConditionSelection$H;

.field private final mListener:Landroid/service/notification/IConditionListener;

.field private final mNoMan:Landroid/app/INotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/settings/notification/ZenModeConditionSelection$H;

    invoke-direct {v4, p0, v6}, Lcom/android/settings/notification/ZenModeConditionSelection$H;-><init>(Lcom/android/settings/notification/ZenModeConditionSelection;Lcom/android/settings/notification/ZenModeConditionSelection$1;)V

    iput-object v4, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mHandler:Lcom/android/settings/notification/ZenModeConditionSelection$H;

    new-instance v4, Lcom/android/settings/notification/ZenModeConditionSelection$2;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeConditionSelection$2;-><init>(Lcom/android/settings/notification/ZenModeConditionSelection;)V

    iput-object v4, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mListener:Landroid/service/notification/IConditionListener;

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mConditions:Ljava/util/List;

    new-instance v4, Landroid/animation/LayoutTransition;

    invoke-direct {v4}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ZenModeConditionSelection;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v2, v4}, Lcom/android/settings/notification/ZenModeConditionSelection;->setPadding(IIII)V

    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mNoMan:Landroid/app/INotificationManager;

    invoke-direct {p0, v6}, Lcom/android/settings/notification/ZenModeConditionSelection;->newRadioButton(Landroid/service/notification/Condition;)Landroid/widget/RadioButton;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mContext:Landroid/content/Context;

    const v5, 0x10406b0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    sget-object v4, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    aget v5, v5, v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ZenModeConditionSelection;->handleCondition(Landroid/service/notification/Condition;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenModeConditionSelection;)Lcom/android/settings/notification/ZenModeConditionSelection$H;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mHandler:Lcom/android/settings/notification/ZenModeConditionSelection$H;

    return-object v0
.end method

.method private newRadioButton(Landroid/service/notification/Condition;)Landroid/widget/RadioButton;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v1, v3, 0x2

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int v2, v3, v1

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/RadioButton;->setPaddingRelative(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setMinHeight(I)V

    new-instance v3, Lcom/android/settings/notification/ZenModeConditionSelection$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/notification/ZenModeConditionSelection$1;-><init>(Lcom/android/settings/notification/ZenModeConditionSelection;Landroid/widget/RadioButton;)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeConditionSelection;->addView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public confirmCondition()V
    .locals 3

    const-string v0, "ZenModeConditionSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmCondition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mCondition:Landroid/service/notification/Condition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mNoMan:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mCondition:Landroid/service/notification/Condition;

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->setZenModeCondition(Landroid/service/notification/Condition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected handleCondition(Landroid/service/notification/Condition;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mConditions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeConditionSelection;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget v1, p1, Landroid/service/notification/Condition;->state:I

    if-eq v1, v2, :cond_1

    iget v1, p1, Landroid/service/notification/Condition;->state:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeConditionSelection;->newRadioButton(Landroid/service/notification/Condition;)Landroid/widget/RadioButton;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p1, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget v1, p1, Landroid/service/notification/Condition;->state:I

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mConditions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v1, p1, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected handleConditions([Landroid/service/notification/Condition;)V
    .locals 4

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeConditionSelection;->handleCondition(Landroid/service/notification/Condition;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RadioGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeConditionSelection;->requestZenModeConditions(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RadioGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeConditionSelection;->requestZenModeConditions(I)V

    return-void
.end method

.method protected requestZenModeConditions(I)V
    .locals 3

    const-string v0, "ZenModeConditionSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestZenModeConditions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/service/notification/Condition;->relevanceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mNoMan:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mListener:Landroid/service/notification/IConditionListener;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setCondition(Landroid/service/notification/Condition;)V
    .locals 3

    const-string v0, "ZenModeConditionSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCondition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mCondition:Landroid/service/notification/Condition;

    return-void
.end method
