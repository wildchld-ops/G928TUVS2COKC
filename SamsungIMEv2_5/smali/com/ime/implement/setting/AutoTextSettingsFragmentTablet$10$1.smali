.class Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$10$1;
.super Ljava/lang/Object;
.source "AutoTextSettingsFragmentTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$10;

.field final synthetic val$scrollview:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$10;Landroid/widget/ScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$10$1;->this$1:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$10;

    iput-object p2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$10$1;->val$scrollview:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$10$1;->val$scrollview:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method
