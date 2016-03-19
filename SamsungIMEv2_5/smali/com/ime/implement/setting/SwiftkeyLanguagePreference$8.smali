.class Lcom/ime/implement/setting/SwiftkeyLanguagePreference$8;
.super Lcom/touchtype_fluency/util/ProgressListener;
.source "SwiftkeyLanguagePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagePreference;
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

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$8;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/ProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$8;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->access$1400(Lcom/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v0

    new-instance v1, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$8$2;

    invoke-direct {v1, p0, p1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$8$2;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreference$8;Z)V

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(II)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$8;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->access$1400(Lcom/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v0

    new-instance v1, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$8$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$8$1;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreference$8;II)V

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
