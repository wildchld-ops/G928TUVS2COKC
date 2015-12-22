.class Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;
.super Ljava/lang/Object;
.source "KnoxTimeoutHandler.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KnoxPointerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxTimeoutHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    # getter for: Lcom/android/server/pm/KnoxTimeoutHandler;->isKnox:Z
    invoke-static {v1}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$500(Lcom/android/server/pm/KnoxTimeoutHandler;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    # getter for: Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;
    invoke-static {v1}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$700(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    sget-object v2, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    # getter for: Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I
    invoke-static {v3}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$600(Lcom/android/server/pm/KnoxTimeoutHandler;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    iget-object v2, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    # getter for: Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I
    invoke-static {v2}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$600(Lcom/android/server/pm/KnoxTimeoutHandler;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/KnoxTimeoutHandler;->postTimeoutReset(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
