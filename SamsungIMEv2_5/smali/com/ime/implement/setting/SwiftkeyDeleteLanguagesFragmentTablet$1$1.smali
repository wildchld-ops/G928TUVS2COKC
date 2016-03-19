.class Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$1$1;
.super Ljava/lang/Object;
.source "SwiftkeyDeleteLanguagesFragmentTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$1;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$1$1;->this$1:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$1$1;->this$1:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$1;

    iget-object v0, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$1;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$000(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Lcom/sec/android/inputmethod/menu/PopupList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/menu/PopupList;->show()V

    return-void
.end method
