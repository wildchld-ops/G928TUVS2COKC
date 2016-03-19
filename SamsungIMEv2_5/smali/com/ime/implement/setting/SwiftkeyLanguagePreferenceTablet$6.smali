.class Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;
.super Lcom/touchtype_fluency/util/ProgressListener;
.source "SwiftkeyLanguagePreferenceTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;
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

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/ProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v0

    new-instance v1, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;

    invoke-direct {v1, p0, p1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$2;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;Z)V

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(II)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1300(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v0

    new-instance v1, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6$1;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$6;II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
