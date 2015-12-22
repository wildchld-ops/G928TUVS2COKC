.class public Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;
.super Landroid/widget/LinearLayout;
.source "ZenModeAutomaticConditionSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeAutomaticConditionSelection$H;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/settings/notification/ZenModeAutomaticConditionSelection$H;

.field private final mListener:Landroid/service/notification/IConditionListener;

.field private final mNoMan:Landroid/app/INotificationManager;

.field private final mSelectedConditions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection$H;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection$H;-><init>(Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;Lcom/android/settings/notification/ZenModeAutomaticConditionSelection$1;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mHandler:Lcom/android/settings/notification/ZenModeAutomaticConditionSelection$H;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mSelectedConditions:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection$2;-><init>(Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mListener:Landroid/service/notification/IConditionListener;

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->setOrientation(I)V

    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->setPadding(IIII)V

    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mNoMan:Landroid/app/INotificationManager;

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->refreshSelectedConditions()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->setSelectedCondition(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;)Lcom/android/settings/notification/ZenModeAutomaticConditionSelection$H;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mHandler:Lcom/android/settings/notification/ZenModeAutomaticConditionSelection$H;

    return-object v0
.end method

.method private newCheckBox(Ljava/lang/Object;)Landroid/widget/CheckBox;
    .locals 2

    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection$1;-><init>(Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private refreshSelectedConditions()V
    .locals 8

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mNoMan:Landroid/app/INotificationManager;

    invoke-interface {v6}, Landroid/app/INotificationManager;->getAutomaticZenModeConditions()[Landroid/service/notification/Condition;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mSelectedConditions:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->clear()V

    if-eqz v1, :cond_0

    move-object v0, v1

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mSelectedConditions:Landroid/util/ArraySet;

    iget-object v7, v2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v6, "ZenModeAutomaticConditionSelection"

    const-string v7, "Error calling getAutomaticZenModeConditions"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private setSelectedCondition(Landroid/net/Uri;Z)V
    .locals 6

    const-string v3, "ZenModeAutomaticConditionSelection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSelectedCondition conditionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " selected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mSelectedConditions:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mSelectedConditions:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-array v0, v3, [Landroid/net/Uri;

    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mSelectedConditions:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mSelectedConditions:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mNoMan:Landroid/app/INotificationManager;

    invoke-interface {v3, v0}, Landroid/app/INotificationManager;->setAutomaticZenModeConditions([Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v1

    const-string v3, "ZenModeAutomaticConditionSelection"

    const-string v4, "Error calling setAutomaticZenModeConditions"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method protected handleConditions([Landroid/service/notification/Condition;)V
    .locals 8

    const/4 v7, 0x3

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    iget-object v5, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iget v5, v1, Landroid/service/notification/Condition;->state:I

    if-eq v5, v7, :cond_0

    if-nez v4, :cond_0

    iget-object v5, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-direct {p0, v5}, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->newCheckBox(Ljava/lang/Object;)Landroid/widget/CheckBox;

    move-result-object v4

    :cond_0
    if-eqz v4, :cond_1

    iget-object v5, v1, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget v5, v1, Landroid/service/notification/Condition;->state:I

    if-eq v5, v7, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mSelectedConditions:Landroid/util/ArraySet;

    iget-object v6, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->requestZenModeConditions(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->requestZenModeConditions(I)V

    return-void
.end method

.method protected requestZenModeConditions(I)V
    .locals 4

    const-string v1, "ZenModeAutomaticConditionSelection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestZenModeConditions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/service/notification/Condition;->relevanceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mNoMan:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomaticConditionSelection;->mListener:Landroid/service/notification/IConditionListener;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ZenModeAutomaticConditionSelection"

    const-string v2, "Error calling requestZenModeConditions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
