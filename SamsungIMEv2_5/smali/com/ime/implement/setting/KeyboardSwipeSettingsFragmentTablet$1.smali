.class Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet$1;
.super Ljava/lang/Object;
.source "KeyboardSwipeSettingsFragmentTablet.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet$1;->this$0:Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet$1;->this$0:Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;

    # invokes: Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->changeSwipe(Landroid/preference/Preference;)V
    invoke-static {v0, p1}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->access$000(Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;Landroid/preference/Preference;)V

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet$1;->this$0:Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/KeyboardSwipeSettingsFragmentTablet;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    const-string v1, "S009"

    const-string v2, "None"

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
