.class Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8$1;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettingsFragmentTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8;->onComplete(Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8;

.field final synthetic val$success:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8;Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8$1;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8;

    iput-object p2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8$1;->val$success:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8$1;->val$success:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->SUCCESS:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8$1;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8;

    iget-object v0, v0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$8;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->updateSwiftkeyList()V
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->access$200(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V

    :cond_0
    return-void
.end method
