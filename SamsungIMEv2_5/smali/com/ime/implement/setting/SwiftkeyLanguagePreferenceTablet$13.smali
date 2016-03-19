.class Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$13;
.super Ljava/lang/Thread;
.source "SwiftkeyLanguagePreferenceTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->DownloadVOLanguage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

.field final synthetic val$languageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$13;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    iput-object p2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$13;->val$languageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$13;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePackManager:Lcom/myscript/atk/rmc/VOLanguagePackManager;
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$2400(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$13;->val$languageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/myscript/atk/rmc/VOLanguagePack;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$13;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    iget-object v1, v1, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->VOlistener:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/rmc/VOLanguagePack;->downloadLanguage(Lcom/touchtype_fluency/util/ProgressListener;)V

    return-void
.end method
