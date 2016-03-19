.class Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;
.super Ljava/lang/Object;
.source "SwiftkeyWrapper.java"

# interfaces
.implements Lcom/touchtype_fluency/util/RefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V
    .locals 3

    # getter for: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$700()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    iget-object v0, v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->enableLanguageList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$700()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    iget-object v2, v2, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->enableLanguageList:Ljava/util/List;

    # invokes: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setEnableLanguageList(Lcom/touchtype_fluency/util/LanguagePackManager;Ljava/util/List;)I
    invoke-static {v0, v1, v2}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$800(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;Lcom/touchtype_fluency/util/LanguagePackManager;Ljava/util/List;)I

    :cond_0
    return-void
.end method
