.class Lcom/ime/implement/setting/SwiftkeyLanguagePreference$3;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->CheckandSettheViewState(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->setEnableMKBDDialog()V
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/ime/implement/setting/SwiftkeyLanguagePreference;)V

    return-void
.end method
