.class Lcom/android/incallui/SecInCallActivity$InCallActivityMenu;
.super Landroid/widget/PopupMenu;
.source "SecInCallActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecInCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallActivityMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecInCallActivity;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SecInCallActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/SecInCallActivity$InCallActivityMenu;->this$0:Lcom/android/incallui/SecInCallActivity;

    const v0, 0x800005

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity$InCallActivityMenu;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/SecInCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallMenu;->setMenuOpen(Z)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "InCallActivityMenu is dismissed, dialpad will be hided"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity$InCallActivityMenu;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/SecInCallActivity;->displayDialpad(ZZ)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity$InCallActivityMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecInCallActivity$InCallActivityMenu;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/SecInCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallMenu;->setMenuOpen(Z)V

    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/incallui/SecInCallActivity$InCallActivityMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    invoke-super {p0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
