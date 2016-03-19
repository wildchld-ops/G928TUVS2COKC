.class Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$1;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreferenceTablet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->onBindView(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    const/4 v1, 0x0

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->showDownloadingState(Z)V
    invoke-static {v0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$000(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    const/4 v1, -0x1

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->drawProgressBarComplete(I)V
    invoke-static {v0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$100(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;I)V

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->cancelDownload()V
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$200(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V

    return-void
.end method
