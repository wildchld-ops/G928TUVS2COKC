.class Landroid/widget/AbsSeekBar$2;
.super Landroid/content/BroadcastReceiver;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsSeekBar;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsSeekBar;


# direct methods
.method constructor <init>(Landroid/widget/AbsSeekBar;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsSeekBar$2;->this$0:Landroid/widget/AbsSeekBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v1, "AbsSeekBar"

    const-string/jumbo v2, "registerReceiver: onReceive start "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsSeekBar$2;->this$0:Landroid/widget/AbsSeekBar;

    iget-object v2, p0, Landroid/widget/AbsSeekBar$2;->this$0:Landroid/widget/AbsSeekBar;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060137

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    # invokes: Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;
    invoke-static {v2, v3}, Landroid/widget/AbsSeekBar;->access$200(Landroid/widget/AbsSeekBar;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    # setter for: Landroid/widget/AbsSeekBar;->DEFAULT_NORMAL_COLOR:Landroid/content/res/ColorStateList;
    invoke-static {v1, v2}, Landroid/widget/AbsSeekBar;->access$102(Landroid/widget/AbsSeekBar;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/widget/AbsSeekBar$2;->this$0:Landroid/widget/AbsSeekBar;

    iget-object v2, p0, Landroid/widget/AbsSeekBar$2;->this$0:Landroid/widget/AbsSeekBar;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106013d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    # invokes: Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;
    invoke-static {v2, v3}, Landroid/widget/AbsSeekBar;->access$200(Landroid/widget/AbsSeekBar;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    # setter for: Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;
    invoke-static {v1, v2}, Landroid/widget/AbsSeekBar;->access$302(Landroid/widget/AbsSeekBar;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_0
    const-string v1, "AbsSeekBar"

    const-string/jumbo v2, "registerReceiver: onReceive end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
