.class Lcom/ime/implement/setting/ACLanguagesSettings$1TouchableSpan;
.super Landroid/text/style/ClickableSpan;
.source "ACLanguagesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/ACLanguagesSettings;->showChinaModeLegalInformationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchableSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/ACLanguagesSettings;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/ACLanguagesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/ACLanguagesSettings$1TouchableSpan;->this$0:Lcom/ime/implement/setting/ACLanguagesSettings;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/ACLanguagesSettings$1TouchableSpan;->this$0:Lcom/ime/implement/setting/ACLanguagesSettings;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/ime/implement/setting/ACLanguagesSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/ACLanguagesSettings$1TouchableSpan;->this$0:Lcom/ime/implement/setting/ACLanguagesSettings;

    # invokes: Lcom/ime/implement/setting/ACLanguagesSettings;->showChinaModeTOSDialog()V
    invoke-static {v1}, Lcom/ime/implement/setting/ACLanguagesSettings;->access$000(Lcom/ime/implement/setting/ACLanguagesSettings;)V

    :cond_0
    return-void
.end method
