.class Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$14;
.super Ljava/lang/Thread;
.source "SwiftkeyLanguagePreferenceTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->downloadSwiftkeyLanguage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$14;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$14;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1900(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$14;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$14;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    iget-object v2, v2, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-virtual {v0, v1, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z

    return-void
.end method
