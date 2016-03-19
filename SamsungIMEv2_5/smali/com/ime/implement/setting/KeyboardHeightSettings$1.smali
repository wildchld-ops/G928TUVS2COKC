.class Lcom/ime/implement/setting/KeyboardHeightSettings$1;
.super Ljava/lang/Object;
.source "KeyboardHeightSettings.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/KeyboardHeightSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/KeyboardHeightSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$1;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$1;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-boolean v0, v0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHasFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$1;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    # invokes: Lcom/ime/implement/setting/KeyboardHeightSettings;->updateHandler()V
    invoke-static {v0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->access$000(Lcom/ime/implement/setting/KeyboardHeightSettings;)V

    :cond_0
    return-void
.end method
