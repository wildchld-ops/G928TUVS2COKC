.class final Lcom/android/systemui/volume/ZenModePanel$H;
.super Landroid/os/Handler;
.source "ZenModePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final EXIT_CONDITION_CHANGED:I = 0x2

.field private static final UPDATE_CONDITIONS:I = 0x1

.field private static final UPDATE_ZEN:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$H;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel$H;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$H;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/service/notification/Condition;

    check-cast v0, [Landroid/service/notification/Condition;

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions([Landroid/service/notification/Condition;)V
    invoke-static {v1, v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1600(Lcom/android/systemui/volume/ZenModePanel;[Landroid/service/notification/Condition;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$H;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/Condition;

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->handleExitConditionChanged(Landroid/service/notification/Condition;)V
    invoke-static {v1, v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1700(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$H;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->handleUpdateZen(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->access$1800(Lcom/android/systemui/volume/ZenModePanel;I)V

    goto :goto_0
.end method
