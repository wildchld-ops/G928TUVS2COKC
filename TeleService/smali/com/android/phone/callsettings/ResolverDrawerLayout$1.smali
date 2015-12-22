.class Lcom/android/phone/callsettings/ResolverDrawerLayout$1;
.super Ljava/lang/Object;
.source "ResolverDrawerLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/ResolverDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/ResolverDrawerLayout;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/ResolverDrawerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/ResolverDrawerLayout$1;->this$0:Lcom/android/phone/callsettings/ResolverDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchModeChanged(Z)V
    .locals 3
    .param p1    # Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/ResolverDrawerLayout$1;->this$0:Lcom/android/phone/callsettings/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/ResolverDrawerLayout;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/ResolverDrawerLayout$1;->this$0:Lcom/android/phone/callsettings/ResolverDrawerLayout;

    iget-object v1, p0, Lcom/android/phone/callsettings/ResolverDrawerLayout$1;->this$0:Lcom/android/phone/callsettings/ResolverDrawerLayout;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/ResolverDrawerLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/android/phone/callsettings/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/ResolverDrawerLayout;->access$000(Lcom/android/phone/callsettings/ResolverDrawerLayout;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/ResolverDrawerLayout$1;->this$0:Lcom/android/phone/callsettings/ResolverDrawerLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/android/phone/callsettings/ResolverDrawerLayout;->smoothScrollTo(IF)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/ResolverDrawerLayout;->access$100(Lcom/android/phone/callsettings/ResolverDrawerLayout;IF)V

    :cond_0
    return-void
.end method
