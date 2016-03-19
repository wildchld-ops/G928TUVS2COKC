.class Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettingsFragmentTablet.java"

# interfaces
.implements Lcom/touchtype_fluency/util/RefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->access$000(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v0

    new-instance v1, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8$1;

    invoke-direct {v1, p0, p1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8$1;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8;Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
