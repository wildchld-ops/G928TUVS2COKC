.class Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$1;
.super Ljava/lang/Object;
.source "KeyboardHeightSettingsFragmentTablet.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$1;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$1;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    # invokes: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->updateHandler()V
    invoke-static {v0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$000(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)V

    return-void
.end method
