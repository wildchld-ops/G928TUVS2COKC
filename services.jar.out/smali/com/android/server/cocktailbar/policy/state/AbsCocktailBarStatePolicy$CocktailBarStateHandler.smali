.class final Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;
.super Landroid/os/Handler;
.source "AbsCocktailBarStatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CocktailBarStateHandler"
.end annotation


# static fields
.field private static final MSG_COCKTAIL_CHANGE_VISIBILITY:I = 0x34

.field private static final MSG_COCKTAIL_HIDE_TIMER_EXPIRED:I = 0x64

.field private static final MSG_COCKTAIL_NOTIFY_STATE_TO_BINDER:I = 0x33

.field private static final MSG_COCKTAIL_REFRESH_STATE:I = 0x32

.field private static final MSG_COCKTAIL_UPDATE_ACTIVATE:I = 0x31

.field private static final MSG_COCKTAIL_UPDATE_POSITION:I = 0x4

.field private static final MSG_COCKTAIL_UPDATE_STATE:I = 0x3

.field private static final MSG_COCKTAIL_UPDATE_STATE_FROM_SYSTEM:I = 0x2

.field private static final MSG_COCKTAIL_UPDATE_STATE_FROM_SYSTEM_DELAYED:I = 0x5

.field private static final MSG_COCKTAIL_UPDATE_VISIBILITY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    # getter for: Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleMessage: entry what = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_0

    :sswitch_2
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5, v4}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateStateFromSystem(IZ)V

    goto :goto_0

    :sswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_0

    move v2, v3

    :goto_1
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v3, :cond_1

    move v1, v3

    :goto_2
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateState(ZZ)V

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    move v1, v4

    goto :goto_2

    :sswitch_4
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdatePosition(I)V

    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v3, v3, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    goto :goto_0

    :sswitch_5
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v3}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateStateFromSystem(IZ)V

    goto :goto_0

    :sswitch_6
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_2

    move v0, v3

    :goto_3
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateActivate(Z)V

    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v3, v3, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput-boolean v0, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_3

    :sswitch_7
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleRefreshState()V

    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleNotifyState(I)V

    goto :goto_0

    :sswitch_8
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleNotifyCurrentStateToBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :sswitch_9
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleChangeVisibility(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x31 -> :sswitch_6
        0x32 -> :sswitch_7
        0x33 -> :sswitch_8
        0x34 -> :sswitch_9
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
