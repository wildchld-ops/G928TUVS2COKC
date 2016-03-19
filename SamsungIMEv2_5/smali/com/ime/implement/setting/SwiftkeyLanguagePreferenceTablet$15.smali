.class Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$15;
.super Ljava/lang/Thread;
.source "SwiftkeyLanguagePreferenceTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->cancelDownload()V
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

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$15;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$15;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->cancelDownload()V

    return-void
.end method
