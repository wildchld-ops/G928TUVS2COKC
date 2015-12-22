.class Lcom/android/incallui/SecTabletInCallService$3;
.super Ljava/lang/Object;
.source "SecTabletInCallService.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletInCallService;->showRootView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletInCallService;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletInCallService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletInCallService$3;->this$0:Lcom/android/incallui/SecTabletInCallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$3;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;
    invoke-static {v0}, Lcom/android/incallui/SecTabletInCallService;->access$800(Lcom/android/incallui/SecTabletInCallService;)Lcom/android/incallui/SecTabletRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$3;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # invokes: Lcom/android/incallui/SecTabletInCallService;->showViews()V
    invoke-static {v0}, Lcom/android/incallui/SecTabletInCallService;->access$900(Lcom/android/incallui/SecTabletInCallService;)V

    return-void
.end method
