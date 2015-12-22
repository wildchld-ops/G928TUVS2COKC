.class Lcom/android/incallui/SecCallPopupService$5;
.super Ljava/lang/Object;
.source "SecCallPopupService.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecCallPopupService;->onCreateCustomView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecCallPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecCallPopupService$5;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$5;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$2000(Lcom/android/incallui/SecCallPopupService;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$5;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/SecCallPopupService;->animateForShow()V

    return-void
.end method
