.class Lcom/android/internal/policy/impl/PhoneWindow$DecorView$7;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setFloatingMenuEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$7;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "PhoneWindow"

    const-string v1, "*FMB* setFloatingMenuEnabled onKeyUpPanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$7;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    const/4 v1, 0x0

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/16 v4, 0x52

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    return-void
.end method
