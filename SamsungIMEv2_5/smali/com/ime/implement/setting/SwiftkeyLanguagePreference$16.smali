.class Lcom/ime/implement/setting/SwiftkeyLanguagePreference$16;
.super Ljava/lang/Thread;
.source "SwiftkeyLanguagePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->cancelDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$16;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$16;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->cancelDownload()V

    return-void
.end method
