.class Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$1;
.super Ljava/lang/Object;
.source "AutoTextSettingsFragmentTablet.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$1;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$1;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    invoke-virtual {v0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->handleGlobalLayoutListener()V

    return-void
.end method
