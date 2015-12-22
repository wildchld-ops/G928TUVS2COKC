.class public Lcom/caverock/androidsvg/SVGParser;
.super Lorg/xml/sax/ext/DefaultHandler2;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVGParser$SVGAttr;,
        Lcom/caverock/androidsvg/SVGParser$TextScanner;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr:[I

.field private static aspectRatioKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;",
            ">;"
        }
    .end annotation
.end field

.field private static colourKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static fontSizeKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/SVG$Length;",
            ">;"
        }
    .end annotation
.end field

.field private static fontStyleKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/SVG$Style$FontStyle;",
            ">;"
        }
    .end annotation
.end field

.field private static fontWeightKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static supportedFeatures:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

.field private ignoreDepth:I

.field private ignoring:Z

.field private inMetadataElement:Z

.field private inStyleElement:Z

.field private metadataElementContents:Ljava/lang/StringBuilder;

.field private metadataTag:Ljava/lang/String;

.field private styleElementContents:Ljava/lang/StringBuilder;

.field private supportedFormats:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private svgDocument:Lcom/caverock/androidsvg/SVG;


# direct methods
.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I
    .locals 3

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->values()[Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->CLASS:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5b

    :goto_1
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->UNSUPPORTED:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x5c

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5a

    :goto_2
    :try_start_2
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_59

    :goto_3
    :try_start_3
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clipPathUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_58

    :goto_4
    :try_start_4
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip_path:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_57

    :goto_5
    :try_start_5
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip_rule:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_56

    :goto_6
    :try_start_6
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_55

    :goto_7
    :try_start_7
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->cx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_54

    :goto_8
    :try_start_8
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->cy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_53

    :goto_9
    :try_start_9
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->d:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_52

    :goto_a
    :try_start_a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->direction:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_51

    :goto_b
    :try_start_b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->display:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_50

    :goto_c
    :try_start_c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->dx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_4f

    :goto_d
    :try_start_d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->dy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_4e

    :goto_e
    :try_start_e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_4d

    :goto_f
    :try_start_f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_4c

    :goto_10
    :try_start_10
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill_rule:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_4b

    :goto_11
    :try_start_11
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_4a

    :goto_12
    :try_start_12
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_family:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_49

    :goto_13
    :try_start_13
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_size:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_48

    :goto_14
    :try_start_14
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_style:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_47

    :goto_15
    :try_start_15
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_weight:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_46

    :goto_16
    :try_start_16
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_45

    :goto_17
    :try_start_17
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_44

    :goto_18
    :try_start_18
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->gradientTransform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_43

    :goto_19
    :try_start_19
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->gradientUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_42

    :goto_1a
    :try_start_1a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->height:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_41

    :goto_1b
    :try_start_1b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->href:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_40

    :goto_1c
    :try_start_1c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->id:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_3f

    :goto_1d
    :try_start_1d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_3e

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerHeight:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_3d

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_3c

    :goto_20
    :try_start_20
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerWidth:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_3b

    :goto_21
    :try_start_21
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_end:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_3a

    :goto_22
    :try_start_22
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_mid:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_39

    :goto_23
    :try_start_23
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_start:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_38

    :goto_24
    :try_start_24
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->mask:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_37

    :goto_25
    :try_start_25
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->maskContentUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_36

    :goto_26
    :try_start_26
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->maskUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->media:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_34

    :goto_28
    :try_start_28
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->offset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_33

    :goto_29
    :try_start_29
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_32

    :goto_2a
    :try_start_2a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->orient:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_31

    :goto_2b
    :try_start_2b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->overflow:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_30

    :goto_2c
    :try_start_2c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->pathLength:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2f

    :goto_2d
    :try_start_2d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternContentUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2e

    :goto_2e
    :try_start_2e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternTransform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2d

    :goto_2f
    :try_start_2f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2c

    :goto_30
    :try_start_30
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->points:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_2b

    :goto_31
    :try_start_31
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->preserveAspectRatio:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_2a

    :goto_32
    :try_start_32
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->r:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_29

    :goto_33
    :try_start_33
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->refX:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_28

    :goto_34
    :try_start_34
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->refY:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_27

    :goto_35
    :try_start_35
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredExtensions:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_26

    :goto_36
    :try_start_36
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFeatures:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_25

    :goto_37
    :try_start_37
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFonts:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_24

    :goto_38
    :try_start_38
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFormats:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_23

    :goto_39
    :try_start_39
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->rx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_22

    :goto_3a
    :try_start_3a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ry:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_21

    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->solid_color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_20

    :goto_3c
    :try_start_3c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->solid_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_1f

    :goto_3d
    :try_start_3d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->spreadMethod:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_1e

    :goto_3e
    :try_start_3e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->startOffset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_1d

    :goto_3f
    :try_start_3f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stop_color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_1c

    :goto_40
    :try_start_40
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stop_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_1b

    :goto_41
    :try_start_41
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_1a

    :goto_42
    :try_start_42
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_dasharray:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_19

    :goto_43
    :try_start_43
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_dashoffset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_18

    :goto_44
    :try_start_44
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_linecap:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_17

    :goto_45
    :try_start_45
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_linejoin:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_16

    :goto_46
    :try_start_46
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_miterlimit:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_15

    :goto_47
    :try_start_47
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_14

    :goto_48
    :try_start_48
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_13

    :goto_49
    :try_start_49
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->style:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_12

    :goto_4a
    :try_start_4a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->systemLanguage:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_11

    :goto_4b
    :try_start_4b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->text_anchor:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_10

    :goto_4c
    :try_start_4c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->text_decoration:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_f

    :goto_4d
    :try_start_4d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->transform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_e

    :goto_4e
    :try_start_4e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->type:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_d

    :goto_4f
    :try_start_4f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->vector_effect:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_c

    :goto_50
    :try_start_50
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->version:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_b

    :goto_51
    :try_start_51
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewBox:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_a

    :goto_52
    :try_start_52
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewport_fill:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x59

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_9

    :goto_53
    :try_start_53
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewport_fill_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x5a

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_8

    :goto_54
    :try_start_54
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->visibility:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x5b

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_7

    :goto_55
    :try_start_55
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_6

    :goto_56
    :try_start_56
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_5

    :goto_57
    :try_start_57
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x1:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_4

    :goto_58
    :try_start_58
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x2:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_3

    :goto_59
    :try_start_59
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_2

    :goto_5a
    :try_start_5a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y1:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_1

    :goto_5b
    :try_start_5b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y2:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_0

    :goto_5c
    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_5c

    :catch_1
    move-exception v1

    goto :goto_5b

    :catch_2
    move-exception v1

    goto :goto_5a

    :catch_3
    move-exception v1

    goto :goto_59

    :catch_4
    move-exception v1

    goto :goto_58

    :catch_5
    move-exception v1

    goto :goto_57

    :catch_6
    move-exception v1

    goto :goto_56

    :catch_7
    move-exception v1

    goto :goto_55

    :catch_8
    move-exception v1

    goto :goto_54

    :catch_9
    move-exception v1

    goto :goto_53

    :catch_a
    move-exception v1

    goto :goto_52

    :catch_b
    move-exception v1

    goto/16 :goto_51

    :catch_c
    move-exception v1

    goto/16 :goto_50

    :catch_d
    move-exception v1

    goto/16 :goto_4f

    :catch_e
    move-exception v1

    goto/16 :goto_4e

    :catch_f
    move-exception v1

    goto/16 :goto_4d

    :catch_10
    move-exception v1

    goto/16 :goto_4c

    :catch_11
    move-exception v1

    goto/16 :goto_4b

    :catch_12
    move-exception v1

    goto/16 :goto_4a

    :catch_13
    move-exception v1

    goto/16 :goto_49

    :catch_14
    move-exception v1

    goto/16 :goto_48

    :catch_15
    move-exception v1

    goto/16 :goto_47

    :catch_16
    move-exception v1

    goto/16 :goto_46

    :catch_17
    move-exception v1

    goto/16 :goto_45

    :catch_18
    move-exception v1

    goto/16 :goto_44

    :catch_19
    move-exception v1

    goto/16 :goto_43

    :catch_1a
    move-exception v1

    goto/16 :goto_42

    :catch_1b
    move-exception v1

    goto/16 :goto_41

    :catch_1c
    move-exception v1

    goto/16 :goto_40

    :catch_1d
    move-exception v1

    goto/16 :goto_3f

    :catch_1e
    move-exception v1

    goto/16 :goto_3e

    :catch_1f
    move-exception v1

    goto/16 :goto_3d

    :catch_20
    move-exception v1

    goto/16 :goto_3c

    :catch_21
    move-exception v1

    goto/16 :goto_3b

    :catch_22
    move-exception v1

    goto/16 :goto_3a

    :catch_23
    move-exception v1

    goto/16 :goto_39

    :catch_24
    move-exception v1

    goto/16 :goto_38

    :catch_25
    move-exception v1

    goto/16 :goto_37

    :catch_26
    move-exception v1

    goto/16 :goto_36

    :catch_27
    move-exception v1

    goto/16 :goto_35

    :catch_28
    move-exception v1

    goto/16 :goto_34

    :catch_29
    move-exception v1

    goto/16 :goto_33

    :catch_2a
    move-exception v1

    goto/16 :goto_32

    :catch_2b
    move-exception v1

    goto/16 :goto_31

    :catch_2c
    move-exception v1

    goto/16 :goto_30

    :catch_2d
    move-exception v1

    goto/16 :goto_2f

    :catch_2e
    move-exception v1

    goto/16 :goto_2e

    :catch_2f
    move-exception v1

    goto/16 :goto_2d

    :catch_30
    move-exception v1

    goto/16 :goto_2c

    :catch_31
    move-exception v1

    goto/16 :goto_2b

    :catch_32
    move-exception v1

    goto/16 :goto_2a

    :catch_33
    move-exception v1

    goto/16 :goto_29

    :catch_34
    move-exception v1

    goto/16 :goto_28

    :catch_35
    move-exception v1

    goto/16 :goto_27

    :catch_36
    move-exception v1

    goto/16 :goto_26

    :catch_37
    move-exception v1

    goto/16 :goto_25

    :catch_38
    move-exception v1

    goto/16 :goto_24

    :catch_39
    move-exception v1

    goto/16 :goto_23

    :catch_3a
    move-exception v1

    goto/16 :goto_22

    :catch_3b
    move-exception v1

    goto/16 :goto_21

    :catch_3c
    move-exception v1

    goto/16 :goto_20

    :catch_3d
    move-exception v1

    goto/16 :goto_1f

    :catch_3e
    move-exception v1

    goto/16 :goto_1e

    :catch_3f
    move-exception v1

    goto/16 :goto_1d

    :catch_40
    move-exception v1

    goto/16 :goto_1c

    :catch_41
    move-exception v1

    goto/16 :goto_1b

    :catch_42
    move-exception v1

    goto/16 :goto_1a

    :catch_43
    move-exception v1

    goto/16 :goto_19

    :catch_44
    move-exception v1

    goto/16 :goto_18

    :catch_45
    move-exception v1

    goto/16 :goto_17

    :catch_46
    move-exception v1

    goto/16 :goto_16

    :catch_47
    move-exception v1

    goto/16 :goto_15

    :catch_48
    move-exception v1

    goto/16 :goto_14

    :catch_49
    move-exception v1

    goto/16 :goto_13

    :catch_4a
    move-exception v1

    goto/16 :goto_12

    :catch_4b
    move-exception v1

    goto/16 :goto_11

    :catch_4c
    move-exception v1

    goto/16 :goto_10

    :catch_4d
    move-exception v1

    goto/16 :goto_f

    :catch_4e
    move-exception v1

    goto/16 :goto_e

    :catch_4f
    move-exception v1

    goto/16 :goto_d

    :catch_50
    move-exception v1

    goto/16 :goto_c

    :catch_51
    move-exception v1

    goto/16 :goto_b

    :catch_52
    move-exception v1

    goto/16 :goto_a

    :catch_53
    move-exception v1

    goto/16 :goto_9

    :catch_54
    move-exception v1

    goto/16 :goto_8

    :catch_55
    move-exception v1

    goto/16 :goto_7

    :catch_56
    move-exception v1

    goto/16 :goto_6

    :catch_57
    move-exception v1

    goto/16 :goto_5

    :catch_58
    move-exception v1

    goto/16 :goto_4

    :catch_59
    move-exception v1

    goto/16 :goto_3

    :catch_5a
    move-exception v1

    goto/16 :goto_2

    :catch_5b
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 8

    const v7, 0x696969

    const v4, 0x2f4f4f

    const v3, 0xffff

    const/16 v6, 0x2bc

    const/16 v5, 0x190

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "aliceblue"

    const v2, 0xf0f8ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "antiquewhite"

    const v2, 0xfaebd7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "aqua"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "aquamarine"

    const v2, 0x7fffd4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "azure"

    const v2, 0xf0ffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "beige"

    const v2, 0xf5f5dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "bisque"

    const v2, 0xffe4c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "black"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "blanchedalmond"

    const v2, 0xffebcd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "blue"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "blueviolet"

    const v2, 0x8a2be2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "brown"

    const v2, 0xa52a2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "burlywood"

    const v2, 0xdeb887

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "cadetblue"

    const v2, 0x5f9ea0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "chartreuse"

    const v2, 0x7fff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "chocolate"

    const v2, 0xd2691e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "coral"

    const v2, 0xff7f50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "cornflowerblue"

    const v2, 0x6495ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "cornsilk"

    const v2, 0xfff8dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "crimson"

    const v2, 0xdc143c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "cyan"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkblue"

    const/16 v2, 0x8b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkcyan"

    const v2, 0x8b8b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkgoldenrod"

    const v2, 0xb8860b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkgray"

    const v2, 0xa9a9a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkgreen"

    const/16 v2, 0x6400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkgrey"

    const v2, 0xa9a9a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkkhaki"

    const v2, 0xbdb76b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkmagenta"

    const v2, 0x8b008b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkolivegreen"

    const v2, 0x556b2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkorange"

    const v2, 0xff8c00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkorchid"

    const v2, 0x9932cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkred"

    const/high16 v2, 0x8b0000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darksalmon"

    const v2, 0xe9967a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkseagreen"

    const v2, 0x8fbc8f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkslateblue"

    const v2, 0x483d8b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkslategray"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkslategrey"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkturquoise"

    const v2, 0xced1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkviolet"

    const v2, 0x9400d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "deeppink"

    const v2, 0xff1493

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "deepskyblue"

    const v2, 0xbfff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "dimgray"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "dimgrey"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "dodgerblue"

    const v2, 0x1e90ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "firebrick"

    const v2, 0xb22222

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "floralwhite"

    const v2, 0xfffaf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "forestgreen"

    const v2, 0x228b22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "fuchsia"

    const v2, 0xff00ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "gainsboro"

    const v2, 0xdcdcdc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "ghostwhite"

    const v2, 0xf8f8ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "gold"

    const v2, 0xffd700

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "goldenrod"

    const v2, 0xdaa520

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "gray"

    const v2, 0x808080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "green"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "greenyellow"

    const v2, 0xadff2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "grey"

    const v2, 0x808080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "honeydew"

    const v2, 0xf0fff0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "hotpink"

    const v2, 0xff69b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "indianred"

    const v2, 0xcd5c5c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "indigo"

    const v2, 0x4b0082

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "ivory"

    const v2, 0xfffff0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "khaki"

    const v2, 0xf0e68c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lavender"

    const v2, 0xe6e6fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lavenderblush"

    const v2, 0xfff0f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lawngreen"

    const v2, 0x7cfc00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lemonchiffon"

    const v2, 0xfffacd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightblue"

    const v2, 0xadd8e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightcoral"

    const v2, 0xf08080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightcyan"

    const v2, 0xe0ffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightgoldenrodyellow"

    const v2, 0xfafad2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightgray"

    const v2, 0xd3d3d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightgreen"

    const v2, 0x90ee90

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightgrey"

    const v2, 0xd3d3d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightpink"

    const v2, 0xffb6c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightsalmon"

    const v2, 0xffa07a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightseagreen"

    const v2, 0x20b2aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightskyblue"

    const v2, 0x87cefa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightslategray"

    const v2, 0x778899

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightslategrey"

    const v2, 0x778899

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightsteelblue"

    const v2, 0xb0c4de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightyellow"

    const v2, 0xffffe0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lime"

    const v2, 0xff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "limegreen"

    const v2, 0x32cd32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "linen"

    const v2, 0xfaf0e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "magenta"

    const v2, 0xff00ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "maroon"

    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumaquamarine"

    const v2, 0x66cdaa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumblue"

    const/16 v2, 0xcd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumorchid"

    const v2, 0xba55d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumpurple"

    const v2, 0x9370db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumseagreen"

    const v2, 0x3cb371

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumslateblue"

    const v2, 0x7b68ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumspringgreen"

    const v2, 0xfa9a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumturquoise"

    const v2, 0x48d1cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumvioletred"

    const v2, 0xc71585

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "midnightblue"

    const v2, 0x191970

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mintcream"

    const v2, 0xf5fffa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mistyrose"

    const v2, 0xffe4e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "moccasin"

    const v2, 0xffe4b5    # 2.3500096E-38f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "navajowhite"

    const v2, 0xffdead

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "navy"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "oldlace"

    const v2, 0xfdf5e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "olive"

    const v2, 0x808000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "olivedrab"

    const v2, 0x6b8e23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "orange"

    const v2, 0xffa500

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "orangered"

    const v2, 0xff4500

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "orchid"

    const v2, 0xda70d6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "palegoldenrod"

    const v2, 0xeee8aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "palegreen"

    const v2, 0x98fb98

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "paleturquoise"

    const v2, 0xafeeee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "palevioletred"

    const v2, 0xdb7093

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "papayawhip"

    const v2, 0xffefd5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "peachpuff"

    const v2, 0xffdab9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "peru"

    const v2, 0xcd853f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "pink"

    const v2, 0xffc0cb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "plum"

    const v2, 0xdda0dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "powderblue"

    const v2, 0xb0e0e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "purple"

    const v2, 0x800080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "red"

    const/high16 v2, 0xff0000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "rosybrown"

    const v2, 0xbc8f8f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "royalblue"

    const v2, 0x4169e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "saddlebrown"

    const v2, 0x8b4513

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "salmon"

    const v2, 0xfa8072

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "sandybrown"

    const v2, 0xf4a460

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "seagreen"

    const v2, 0x2e8b57

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "seashell"

    const v2, 0xfff5ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "sienna"

    const v2, 0xa0522d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "silver"

    const v2, 0xc0c0c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "skyblue"

    const v2, 0x87ceeb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "slateblue"

    const v2, 0x6a5acd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "slategray"

    const v2, 0x708090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "slategrey"

    const v2, 0x708090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "snow"

    const v2, 0xfffafa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "springgreen"

    const v2, 0xff7f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "steelblue"

    const v2, 0x4682b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "tan"

    const v2, 0xd2b48c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "teal"

    const v2, 0x8080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "thistle"

    const v2, 0xd8bfd8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "tomato"

    const v2, 0xff6347

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "turquoise"

    const v2, 0x40e0d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "violet"

    const v2, 0xee82ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "wheat"

    const v2, 0xf5deb3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "white"

    const v2, 0xffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "whitesmoke"

    const v2, 0xf5f5f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "yellow"

    const v2, 0xffff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "yellowgreen"

    const v2, 0x9acd32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "xx-small"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const v3, 0x3f31a9fc    # 0.694f

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "x-small"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const v3, 0x3f553f7d    # 0.833f

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "small"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v3, 0x41200000    # 10.0f

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "medium"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v3, 0x41400000    # 12.0f

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "large"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const v3, 0x41666666    # 14.4f

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "x-large"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const v3, 0x418a6666    # 17.3f

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "xx-large"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const v3, 0x41a5999a    # 20.7f

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "smaller"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const v3, 0x42a6a8f6    # 83.33f

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "larger"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v3, 0x42f00000    # 120.0f

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "normal"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "bold"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "bolder"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "lighter"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "100"

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "200"

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "300"

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "400"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "500"

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "600"

    const/16 v2, 0x258

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "700"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "800"

    const/16 v2, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "900"

    const/16 v2, 0x384

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    const-string v1, "normal"

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    const-string v1, "italic"

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    const-string v1, "oblique"

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Oblique:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "none"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->None:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMinYMin"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMidYMin"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMaxYMin"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMinYMid"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMidYMid"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMaxYMid"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMinYMax"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMidYMax"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMaxYMax"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Structure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicStructure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "ConditionalProcessing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Image"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Style"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "ViewportAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Shape"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicText"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "PaintAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicPaintAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "OpacityAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicGraphicsAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Marker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Gradient"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Clip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicClip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Mask"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "View"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->supportedFormats:Ljava/util/HashSet;

    return-void
.end method

.method private circle(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<circle>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Circle;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Circle;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Circle;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCircle(Lcom/caverock/androidsvg/SVG$Circle;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void
.end method

.method private clipPath(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<clipPath>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$ClipPath;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$ClipPath;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesClipPath(Lcom/caverock/androidsvg/SVG$ClipPath;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private defs(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<defs>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$Defs;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Defs;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Defs;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Defs;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private ellipse(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<ellipse>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Ellipse;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesEllipse(Lcom/caverock/androidsvg/SVG$Ellipse;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void
.end method

.method private g(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<g>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$Group;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Group;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Group;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Group;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private image(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<image>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$Image;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Image;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Image;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Image;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesImage(Lcom/caverock/androidsvg/SVG$Image;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private line(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<line>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Line;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Line;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Line;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesLine(Lcom/caverock/androidsvg/SVG$Line;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void
.end method

.method private linearGradient(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<linearGradiant>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesLinearGradient(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private marker(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<marker>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$Marker;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Marker;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Marker;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Marker;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesMarker(Lcom/caverock/androidsvg/SVG$Marker;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private mask(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<mask>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$Mask;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Mask;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Mask;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Mask;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesMask(Lcom/caverock/androidsvg/SVG$Mask;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private parseAttributesCircle(Lcom/caverock/androidsvg/SVG$Circle;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <circle> element. r cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x32 -> :sswitch_2
    .end sparse-switch
.end method

.method private parseAttributesClipPath(Lcom/caverock/androidsvg/SVG$ClipPath;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const-string v2, "objectBoundingBox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    const-string v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid value for attribute clipPathUnits"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-lt v2, v4, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v4

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v5

    aget v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_0
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseRequiredFeatures(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFeatures(Ljava/util/Set;)V

    goto :goto_1

    :sswitch_1
    invoke-interface {p1, v3}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredExtensions(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseSystemLanguage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setSystemLanguage(Ljava/util/Set;)V

    goto :goto_1

    :sswitch_3
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseRequiredFormats(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFormats(Ljava/util/Set;)V

    goto :goto_1

    :sswitch_4
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_2
    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFonts(Ljava/util/Set;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x35 -> :sswitch_0
        0x36 -> :sswitch_1
        0x37 -> :sswitch_3
        0x38 -> :sswitch_4
        0x4a -> :sswitch_2
    .end sparse-switch
.end method

.method private parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "xml:id"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v3, "xml:space"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    const-string v3, "preserve"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid value for \"xml:space\" attribute: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseAttributesEllipse(Lcom/caverock/androidsvg/SVG$Ellipse;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <ellipse> element. rx cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <ellipse> element. ry cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x39 -> :sswitch_2
        0x3a -> :sswitch_3
    .end sparse-switch
.end method

.method private parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v3

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    const-string v3, "objectBoundingBox"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    const-string v3, "userSpaceOnUse"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    new-instance v3, Lorg/xml/sax/SAXException;

    const-string v4, "Invalid value for attribute gradientUnits"

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_1
    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v3

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    goto :goto_1

    :sswitch_2
    :try_start_0
    invoke-static {v2}, Lcom/caverock/androidsvg/SVG$GradientSpread;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-result-object v3

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid spreadMethod attribute. \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is not a valid value."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_3
    const-string v3, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x1b -> :sswitch_3
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method private parseAttributesImage(Lcom/caverock/androidsvg/SVG$Image;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <use> element. width cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <use> element. height cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_4
    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    goto :goto_1

    :sswitch_5
    invoke-static {p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_3
        0x1b -> :sswitch_4
        0x31 -> :sswitch_5
        0x52 -> :sswitch_2
        0x53 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesLine(Lcom/caverock/androidsvg/SVG$Line;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :pswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private parseAttributesLinearGradient(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :pswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private parseAttributesMarker(Lcom/caverock/androidsvg/SVG$Marker;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <marker> element. markerWidth cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <marker> element. markerHeight cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_4
    const-string v2, "strokeWidth"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    goto :goto_1

    :cond_2
    const-string v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    goto :goto_1

    :cond_3
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid value for attribute markerUnits"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_5
    const-string v2, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/high16 v2, 0x7fc00000    # NaNf

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_3
        0x22 -> :sswitch_4
        0x23 -> :sswitch_2
        0x2a -> :sswitch_5
        0x33 -> :sswitch_0
        0x34 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesMask(Lcom/caverock/androidsvg/SVG$Mask;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string v2, "objectBoundingBox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    const-string v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid value for attribute maskUnits"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_1
    const-string v2, "objectBoundingBox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    const-string v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid value for attribute maskContentUnits"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <mask> element. width cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_5
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <mask> element. height cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_5
        0x25 -> :sswitch_1
        0x26 -> :sswitch_0
        0x52 -> :sswitch_4
        0x53 -> :sswitch_2
        0x54 -> :sswitch_3
    .end sparse-switch
.end method

.method private parseAttributesPath(Lcom/caverock/androidsvg/SVG$Path;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parsePath(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$PathDefinition;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    goto :goto_1

    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->pathLength:Ljava/lang/Float;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->pathLength:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <path> element. pathLength cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x2c -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesPattern(Lcom/caverock/androidsvg/SVG$Pattern;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string v2, "objectBoundingBox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    const-string v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid value for attribute patternUnits"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_1
    const-string v2, "objectBoundingBox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    const-string v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid value for attribute patternContentUnits"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_2
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    goto :goto_1

    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_5
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <pattern> element. width cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_6
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <pattern> element. height cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_7
    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_6
        0x1b -> :sswitch_7
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x2f -> :sswitch_0
        0x52 -> :sswitch_5
        0x53 -> :sswitch_3
        0x54 -> :sswitch_4
    .end sparse-switch
.end method

.method private parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v8

    if-lt v1, v8, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v8

    sget-object v9, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->points:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v8, v9, :cond_1

    new-instance v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    :goto_1
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [F

    iput-object v8, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v2, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    if-nez v6, :cond_3

    new-instance v8, Lorg/xml/sax/SAXException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid <"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "> points attribute. Non-coordinate content found in list."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v7

    if-nez v7, :cond_4

    new-instance v8, Lorg/xml/sax/SAXException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid <"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "> points attribute. There should be an even number of coordinates."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v9, v2

    move v2, v3

    goto :goto_2
.end method

.method private parseAttributesRadialGradient(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <radialGradient> element. r cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0x32 -> :sswitch_2
    .end sparse-switch
.end method

.method private parseAttributesRect(Lcom/caverock/androidsvg/SVG$Rect;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <rect> element. width cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <rect> element. height cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <rect> element. rx cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_5
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <rect> element. ry cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_3
        0x39 -> :sswitch_4
        0x3a -> :sswitch_5
        0x52 -> :sswitch_2
        0x53 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesSVG(Lcom/caverock/androidsvg/SVG$Svg;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <svg> element. width cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <svg> element. height cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_4
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->version:Ljava/lang/String;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_3
        0x50 -> :sswitch_4
        0x52 -> :sswitch_2
        0x53 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesStop(Lcom/caverock/androidsvg/SVG$Stop;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseGradiantOffset(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    if-nez v2, :cond_2

    new-instance v2, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v2}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    :cond_2
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_0
    invoke-static {p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parseStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/CSSParser;->parseClassAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x49 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseAttributesTRef(Lcom/caverock/androidsvg/SVG$TRef;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesTextPath(Lcom/caverock/androidsvg/SVG$TextPath;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    goto :goto_1

    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    goto :goto_1

    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    goto :goto_1

    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    goto :goto_1

    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0x53 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v1

    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->transform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v1, v2, :cond_1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/caverock/androidsvg/SVG$HasTransform;->setTransform(Landroid/graphics/Matrix;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseAttributesUse(Lcom/caverock/androidsvg/SVG$Use;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <use> element. width cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <use> element. height cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_4
    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_3
        0x1b -> :sswitch_4
        0x52 -> :sswitch_2
        0x53 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseViewBox(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_1

    :sswitch_1
    invoke-static {p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_1
        0x51 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseCSSStyleSheet(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lcom/caverock/androidsvg/CSSParser;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParser;-><init>(Lcom/caverock/androidsvg/CSSParser$MediaType;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/CSSParser;->parse(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG;->addCSSRules(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    return-void
.end method

.method private static parseClip(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$CSSClipRect;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v5, "auto"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "rect("

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lorg/xml/sax/SAXException;

    const-string v6, "Invalid clip attribute shape. Only rect() is supported."

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    new-instance v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v4

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v5, 0x29

    invoke-virtual {v3, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Lorg/xml/sax/SAXException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bad rect() clip definition: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    new-instance v5, Lcom/caverock/androidsvg/SVG$CSSClipRect;

    invoke-direct {v5, v4, v2, v0, v1}, Lcom/caverock/androidsvg/SVG$CSSClipRect;-><init>(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    goto :goto_0
.end method

.method private static parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v11, 0x4

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x23

    if-ne v9, v10, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_0

    new-instance v9, Lcom/caverock/androidsvg/SVG$Colour;

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    :goto_0
    return-object v9

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v11, :cond_1

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    and-int/lit16 v3, v8, 0xf00

    and-int/lit16 v4, v8, 0xf0

    and-int/lit8 v5, v8, 0xf

    new-instance v9, Lcom/caverock/androidsvg/SVG$Colour;

    shl-int/lit8 v10, v3, 0x10

    shl-int/lit8 v11, v3, 0xc

    or-int/2addr v10, v11

    shl-int/lit8 v11, v4, 0x8

    or-int/2addr v10, v11

    shl-int/lit8 v11, v4, 0x4

    or-int/2addr v10, v11

    shl-int/lit8 v11, v5, 0x4

    or-int/2addr v10, v11

    or-int/2addr v10, v5

    invoke-direct {v9, v10}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v9, Lorg/xml/sax/SAXException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Bad colour value: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    :try_start_1
    new-instance v9, Lorg/xml/sax/SAXException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Bad hex colour value: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "rgb("

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v7, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v7}, Lcom/caverock/androidsvg/SVGParser;->parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I

    move-result v6

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-static {v7}, Lcom/caverock/androidsvg/SVGParser;->parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I

    move-result v2

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-static {v7}, Lcom/caverock/androidsvg/SVGParser;->parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I

    move-result v0

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v9, 0x29

    invoke-virtual {v7, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_3

    new-instance v9, Lorg/xml/sax/SAXException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Bad rgb() colour value: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_3
    new-instance v9, Lcom/caverock/androidsvg/SVG$Colour;

    shl-int/lit8 v10, v6, 0x10

    shl-int/lit8 v11, v2, 0x8

    or-int/2addr v10, v11

    or-int/2addr v10, v0

    invoke-direct {v9, v10}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    goto/16 :goto_0

    :cond_4
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColourKeyword(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private static parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v0, v1, v2

    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/high16 v1, 0x437f0000    # 255.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    const/16 v1, 0xff

    goto :goto_0

    :cond_2
    float-to-int v1, v0

    goto :goto_0
.end method

.method private static parseColourKeyword(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v1, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid colour keyword: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v1
.end method

.method private static parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "currentColor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "nonzero"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "evenodd"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid fill-rule property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseFloat(Ljava/lang/String;)F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid float value (empty string)"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid float value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private static parseFont(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/16 v11, 0x7c

    const/16 v10, 0x2f

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v7, "|caption|icon|menu|message-box|small-caption|status-bar|"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v6, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v6, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_1
    :goto_1
    invoke-virtual {v6, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    if-nez v5, :cond_2

    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "Invalid font style attribute: missing font size and family"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    invoke-virtual {v6, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "Invalid font style attribute: missing line-height"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    const-string v7, "normal"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v4, :cond_5

    sget-object v7, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_1

    :cond_5
    if-nez v2, :cond_6

    sget-object v7, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    if-nez v2, :cond_1

    :cond_6
    if-nez v3, :cond_3

    const-string v7, "small-caps"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v3, v5

    goto :goto_1

    :cond_7
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    :cond_8
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->restOfText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v4, :cond_9

    const/16 v7, 0x190

    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    if-nez v2, :cond_a

    sget-object v7, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    :goto_3
    iput-object v7, p0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iget-wide v8, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v10, 0x1e000

    or-long/2addr v8, v10

    iput-wide v8, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    :cond_a
    move-object v7, v2

    goto :goto_3
.end method

.method private static parseFontFamily(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    :goto_0
    return-object v0

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method private static parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v1, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static parseFontStyle(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FontStyle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v1, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    if-nez v0, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid font-style property: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private static parseFontWeight(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v1, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid font-weight property: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private static parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "url("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attribute. Expected \"none\" or \"url()\" format"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private parseGradiantOffset(Ljava/lang/String;)Ljava/lang/Float;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    new-instance v4, Lorg/xml/sax/SAXException;

    const-string v5, "Invalid offset value in <stop> (empty string)"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x25

    if-ne v6, v7, :cond_1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    :cond_1
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    if-eqz v2, :cond_2

    div-float/2addr v3, v5

    :cond_2
    cmpg-float v6, v3, v4

    if-gez v6, :cond_4

    move v3, v4

    :cond_3
    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :cond_4
    cmpl-float v4, v3, v5

    if-lez v4, :cond_3

    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid offset value in <stop>: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method protected static parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "Invalid length value (empty string)"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x25

    if-ne v2, v6, :cond_2

    add-int/lit8 v1, v1, -0x1

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    :cond_1
    :goto_0
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    new-instance v6, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v6, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v6

    :cond_2
    const/4 v6, 0x2

    if-le v1, v6, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :try_start_1
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Lorg/xml/sax/SAXException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid length unit specifier: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_1
    move-exception v0

    new-instance v6, Lorg/xml/sax/SAXException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid length value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
.end method

.method private static parseLengthList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$Length;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/xml/sax/SAXException;

    const-string v5, "Invalid length list (empty string)"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    :goto_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid length list value: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->ahead()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextUnit()Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    :cond_3
    new-instance v4, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v4, v5, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    goto :goto_0
.end method

.method private static parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 2

    const-string v0, "auto"

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/caverock/androidsvg/SVG$Length;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseOpacity(Ljava/lang/String;)F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v0

    cmpg-float v3, v0, v1

    if-gez v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method private static parseOverflow(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "visible"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "hidden"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "scroll"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid toverflow property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parsePaintSpecifier(Ljava/lang/String;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v3, "url("

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ")"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attribute. Unterminated url() reference"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v1

    :cond_1
    new-instance v3, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {v3, v2, v1}, Lcom/caverock/androidsvg/SVG$PaintReference;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/SVG$SvgPaint;)V

    :goto_0
    return-object v3

    :cond_2
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v3

    goto :goto_0
.end method

.method private static parsePath(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$PathDefinition;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v20, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x3f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v2, Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>()V

    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v3, 0x4d

    move/from16 v0, v17

    if-eq v0, v3, :cond_2

    const/16 v3, 0x6d

    move/from16 v0, v17

    if-ne v0, v3, :cond_0

    :cond_2
    :goto_1
    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    sparse-switch v17, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v18

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v26

    if-eqz v26, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_15

    :cond_3
    const-string v3, "SVGParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad path coords for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path segment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v26

    if-nez v26, :cond_4

    const-string v3, "SVGParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad path coords for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path segment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x6d

    move/from16 v0, v17

    if-ne v0, v3, :cond_5

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    :cond_5
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->moveTo(FF)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move v15, v13

    move v10, v13

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v14

    move/from16 v16, v14

    move v11, v14

    const/16 v3, 0x6d

    move/from16 v0, v17

    if-ne v0, v3, :cond_6

    const/16 v17, 0x6c

    :goto_2
    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->hasLetter()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    goto/16 :goto_1

    :cond_6
    const/16 v17, 0x4c

    goto :goto_2

    :sswitch_2
    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v26

    if-nez v26, :cond_7

    const-string v3, "SVGParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad path coords for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path segment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x6c

    move/from16 v0, v17

    if-ne v0, v3, :cond_8

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    :cond_8
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move v10, v13

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v14

    move v11, v14

    goto :goto_2

    :sswitch_3
    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v26

    if-nez v26, :cond_9

    const-string v3, "SVGParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad path coords for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path segment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x63

    move/from16 v0, v17

    if-ne v0, v3, :cond_a

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v28

    :cond_a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/caverock/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v11

    goto/16 :goto_2

    :sswitch_4
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v10

    sub-float/2addr v3, v13

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v11

    sub-float/2addr v3, v14

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v26

    if-nez v26, :cond_b

    const-string v3, "SVGParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad path coords for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path segment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x73

    move/from16 v0, v17

    if-ne v0, v3, :cond_c

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v28

    :cond_c
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/caverock/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v11

    goto/16 :goto_2

    :sswitch_5
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->close()V

    move v13, v15

    move v10, v15

    move/from16 v14, v16

    move/from16 v11, v16

    goto/16 :goto_2

    :sswitch_6
    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v22

    if-nez v22, :cond_d

    const-string v3, "SVGParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad path coords for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path segment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x68

    move/from16 v0, v17

    if-ne v0, v3, :cond_e

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    :cond_e
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3, v11}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move v10, v13

    goto/16 :goto_2

    :sswitch_7
    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v26

    if-nez v26, :cond_f

    const-string v3, "SVGParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad path coords for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path segment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x76

    move/from16 v0, v17

    if-ne v0, v3, :cond_10

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    :cond_10
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v10, v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v14

    move v11, v14

    goto/16 :goto_2

    :sswitch_8
    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v26

    if-nez v26, :cond_11

    const-string v3, "SVGParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad path coords for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path segment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x71

    move/from16 v0, v17

    if-ne v0, v3, :cond_12

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    :cond_12
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/caverock/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v11

    goto/16 :goto_2

    :sswitch_9
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v10

    sub-float/2addr v3, v13

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v11

    sub-float/2addr v3, v14

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v26

    if-nez v26, :cond_13

    const-string v3, "SVGParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad path coords for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path segment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x74

    move/from16 v0, v17

    if-ne v0, v3, :cond_14

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    :cond_14
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/caverock/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v11

    goto/16 :goto_2

    :cond_15
    const/16 v3, 0x61

    move/from16 v0, v17

    if-ne v0, v3, :cond_16

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    :cond_16
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual/range {v2 .. v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;->arcTo(FFFZZFF)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move v10, v13

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v14

    move v11, v14

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x43 -> :sswitch_3
        0x48 -> :sswitch_6
        0x4c -> :sswitch_2
        0x4d -> :sswitch_1
        0x51 -> :sswitch_8
        0x53 -> :sswitch_4
        0x54 -> :sswitch_9
        0x56 -> :sswitch_7
        0x5a -> :sswitch_5
        0x61 -> :sswitch_0
        0x63 -> :sswitch_3
        0x68 -> :sswitch_6
        0x6c -> :sswitch_2
        0x6d -> :sswitch_1
        0x71 -> :sswitch_8
        0x73 -> :sswitch_4
        0x74 -> :sswitch_9
        0x76 -> :sswitch_7
        0x7a -> :sswitch_5
    .end sparse-switch
.end method

.method private static parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v3, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v4

    const-string v5, "defer"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v4

    :cond_0
    sget-object v5, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v5, "meet"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    :cond_1
    :goto_0
    new-instance v5, Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-direct {v5, v0, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    iput-object v5, p0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    return-void

    :cond_2
    const-string v5, "slice"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    goto :goto_0

    :cond_3
    new-instance v5, Lorg/xml/sax/SAXException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid preserveAspectRatio definition: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static parseRequiredFeatures(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http://www.w3.org/TR/SVG11/feature#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "http://www.w3.org/TR/SVG11/feature#"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0

    :cond_1
    const-string v3, "UNSUPPORTED"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static parseRequiredFormats(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0
.end method

.method private static parseStrokeDashArray(Ljava/lang/String;)[Lcom/caverock/androidsvg/SVG$Length;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid stroke-dasharray. Dash segemnts cannot be negative: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/caverock/androidsvg/SVG$Length;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid stroke-dasharray. Non-Length content found: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid stroke-dasharray. Dash segemnts cannot be negative: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v5

    add-float/2addr v3, v5

    goto :goto_1
.end method

.method private static parseStrokeLineCap(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineCaps;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "butt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "round"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Round:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    goto :goto_0

    :cond_1
    const-string v0, "square"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Square:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid stroke-linecap property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseStrokeLineJoin(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineJoin;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "miter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "round"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Round:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    goto :goto_0

    :cond_1
    const-string v0, "bevel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Bevel:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid stroke-linejoin property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/16 v6, 0x3b

    const/16 v5, 0x3a

    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    const-string v3, "/\\*.*?\\*/"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v2, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v2, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v2, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    iget-object v3, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-nez v3, :cond_4

    new-instance v3, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    iput-object v3, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    :cond_4
    iget-object v3, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-static {v3, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0
.end method

.method private static parseSystemLanguage(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v3, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2d

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v4, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, ""

    invoke-direct {v4, v1, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0
.end method

.method private static parseTextAnchor(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "start"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "middle"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto :goto_0

    :cond_1
    const-string v0, "end"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->End:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid text-anchor property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseTextDecoration(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDecoration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "underline"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    goto :goto_0

    :cond_1
    const-string v0, "overline"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Overline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    goto :goto_0

    :cond_2
    const-string v0, "line-through"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    goto :goto_0

    :cond_3
    const-string v0, "blink"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Blink:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid text-decoration property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseTextDirection(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDirection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "ltr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "rtl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->RTL:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid direction property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    new-instance v16, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    :goto_0
    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v21

    if-eqz v21, :cond_1

    :cond_0
    return-object v15

    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFunction()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v21, Lorg/xml/sax/SAXException;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Bad transform function encountered in transform list: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_2
    const-string v21, "matrix"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v11

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v12

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v13

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    if-eqz v13, :cond_3

    const/16 v21, 0x29

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v21

    if-nez v21, :cond_4

    :cond_3
    new-instance v21, Lorg/xml/sax/SAXException;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Invalid transform list: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_4
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    const/16 v21, 0x9

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v23

    aput v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v23

    aput v23, v21, v22

    const/16 v22, 0x2

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v23

    aput v23, v21, v22

    const/16 v22, 0x3

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v23

    aput v23, v21, v22

    const/16 v22, 0x4

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v23

    aput v23, v21, v22

    const/16 v22, 0x5

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v23

    aput v23, v21, v22

    const/16 v22, 0x6

    const/16 v23, 0x0

    aput v23, v21, v22

    const/16 v22, 0x7

    const/16 v23, 0x0

    aput v23, v21, v22

    const/16 v22, 0x8

    const/high16 v23, 0x3f800000    # 1.0f

    aput v23, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {v15, v14}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_5
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v21

    if-nez v21, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    goto/16 :goto_0

    :cond_6
    const-string v21, "translate"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    if-eqz v19, :cond_7

    const/16 v21, 0x29

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v21

    if-nez v21, :cond_8

    :cond_7
    new-instance v21, Lorg/xml/sax/SAXException;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Invalid transform list: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_8
    if-nez v20, :cond_9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_1

    :cond_9
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_1

    :cond_a
    const-string v21, "scale"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    if-eqz v17, :cond_b

    const/16 v21, 0x29

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v21

    if-nez v21, :cond_c

    :cond_b
    new-instance v21, Lorg/xml/sax/SAXException;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Invalid transform list: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_c
    if-nez v18, :cond_d

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_1

    :cond_d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v21

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_1

    :cond_e
    const-string v21, "rotate"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    if-eqz v5, :cond_f

    const/16 v21, 0x29

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v21

    if-nez v21, :cond_10

    :cond_f
    new-instance v21, Lorg/xml/sax/SAXException;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Invalid transform list: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_10
    if-nez v9, :cond_11

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    goto/16 :goto_1

    :cond_11
    if-eqz v10, :cond_12

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v21

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v22

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v15, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto/16 :goto_1

    :cond_12
    new-instance v21, Lorg/xml/sax/SAXException;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Invalid transform list: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_13
    const-string v21, "skewX"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    if-eqz v5, :cond_14

    const/16 v21, 0x29

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v21

    if-nez v21, :cond_15

    :cond_14
    new-instance v21, Lorg/xml/sax/SAXException;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Invalid transform list: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_15
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->tan(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto/16 :goto_1

    :cond_16
    const-string v21, "skewY"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    if-eqz v5, :cond_17

    const/16 v21, 0x29

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v21

    if-nez v21, :cond_18

    :cond_17
    new-instance v21, Lorg/xml/sax/SAXException;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Invalid transform list: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_18
    const/16 v21, 0x0

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->tan(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto/16 :goto_1

    :cond_19
    if-eqz v8, :cond_5

    new-instance v21, Lorg/xml/sax/SAXException;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Invalid transform list fn: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v21
.end method

.method private static parseVectorEffect(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$VectorEffect;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "non-scaling-stroke"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid vector-effect property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseViewBox(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Box;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v3, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    :cond_0
    new-instance v5, Lorg/xml/sax/SAXException;

    const-string v6, "Invalid viewBox definition - should have four numbers"

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    new-instance v5, Lorg/xml/sax/SAXException;

    const-string v6, "Invalid viewBox. width cannot be negative"

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    new-instance v5, Lorg/xml/sax/SAXException;

    const-string v6, "Invalid viewBox. height cannot be negative"

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v5
.end method

.method private path(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<path>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$Path;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Path;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Path;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Path;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPath(Lcom/caverock/androidsvg/SVG$Path;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void
.end method

.method private pattern(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<pattern>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$Pattern;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Pattern;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPattern(Lcom/caverock/androidsvg/SVG$Pattern;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private polygon(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<polygon>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$Polygon;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Polygon;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Polygon;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Polygon;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const-string v1, "polygon"

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void
.end method

.method private polyline(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<polyline>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$PolyLine;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const-string v1, "polyline"

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void
.end method

.method protected static processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, -0x1

    const/16 v3, 0x7c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "inherit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v0

    invoke-static {p1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseClip(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$CSSClipRect;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x100000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_0

    :pswitch_2
    const-string v0, "fill"

    invoke-static {p2, v0}, Lcom/caverock/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_0

    :pswitch_3
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_0

    :pswitch_4
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_0

    :pswitch_5
    const-string v0, "stroke"

    invoke-static {p2, v0}, Lcom/caverock/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_0

    :pswitch_6
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_0

    :pswitch_7
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_8
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeLineCap(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_9
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeLineJoin(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_a
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "none"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    :goto_1
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :cond_2
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeDashArray(Ljava/lang/String;)[Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :pswitch_c
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_d
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_e
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_f
    invoke-static {p0, p2}, Lcom/caverock/androidsvg/SVGParser;->parseFont(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_11
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x4000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_12
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontWeight(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x8000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_13
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontStyle(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x10000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_14
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseTextDecoration(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x20000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_15
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseTextDirection(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x1000000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_16
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseTextAnchor(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x40000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_17
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOverflow(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x80000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_18
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0xe00000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_19
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x200000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_1a
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x400000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_1b
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x800000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_3

    const-string v0, "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_4

    :cond_3
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value for \"display\" attribute: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "none"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x1000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    :pswitch_1d
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_6

    const-string v0, "|visible|hidden|collapse|"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_7

    :cond_6
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value for \"visibility\" attribute: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v0, "visible"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x2000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_1e
    const-string v0, "currentColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    :goto_3
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x4000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :cond_8
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_3

    :pswitch_1f
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x8000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_20
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x10000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_21
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_22
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_23
    const-string v0, "currentColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    :goto_4
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x80000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :cond_9
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_4

    :pswitch_24
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x100000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_25
    const-string v0, "currentColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    :goto_5
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x200000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :cond_a
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_5

    :pswitch_26
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x400000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_27
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseVectorEffect(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x800000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_20
        :pswitch_0
        :pswitch_21
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
        :pswitch_5
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_25
        :pswitch_26
        :pswitch_1d
    .end packed-switch
.end method

.method private radialGradient(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<radialGradient>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesRadialGradient(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private rect(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<rect>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Rect;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesRect(Lcom/caverock/androidsvg/SVG$Rect;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void
.end method

.method private solidColor(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<solidColor>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$SolidColor;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SolidColor;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SolidColor;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SolidColor;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private stop(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<stop>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$GradientElement;

    if-nez v1, :cond_1

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. <stop> elements are only valid inside <linearGradiant> or <radialGradient> elements."

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/caverock/androidsvg/SVG$Stop;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Stop;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Stop;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Stop;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStop(Lcom/caverock/androidsvg/SVG$Stop;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private style(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v6, 0x1

    const-string v4, "<style>"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v4, :cond_0

    new-instance v4, Lorg/xml/sax/SAXException;

    const-string v5, "Invalid document. Root element must be <svg>"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v1, 0x1

    const-string v2, "all"

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-lt v0, v4, :cond_1

    if-eqz v1, :cond_2

    sget-object v4, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-static {v2, v4}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v6, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    :goto_1
    return-void

    :cond_1
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v4

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v5

    aget v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string v4, "text/css"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    :sswitch_1
    move-object v2, v3

    goto :goto_2

    :cond_2
    iput-boolean v6, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    iput v6, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_1
        0x4e -> :sswitch_0
    .end sparse-switch
.end method

.method private svg(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<svg>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/caverock/androidsvg/SVG$Svg;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Svg;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesSVG(Lcom/caverock/androidsvg/SVG$Svg;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG;->setRootElement(Lcom/caverock/androidsvg/SVG$Svg;)V

    :goto_0
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_0
.end method

.method private symbol(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<symbol>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$Symbol;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Symbol;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Symbol;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Symbol;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private text(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<text>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Text;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Text;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Text;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private textPath(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<textPath>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$TextPath;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$TextPath;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TextPath;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPath(Lcom/caverock/androidsvg/SVG$TextPath;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$TextPath;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$TextPath;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_0
.end method

.method private tref(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<tref>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-nez v1, :cond_1

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. <tref> elements are only valid inside <text> or <tspan> elements."

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/caverock/androidsvg/SVG$TRef;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$TRef;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TRef;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTRef(Lcom/caverock/androidsvg/SVG$TRef;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$TRef;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$TRef;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_0
.end method

.method private tspan(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<tspan>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-nez v1, :cond_1

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. <tspan> elements are only valid inside <text> or other <tspan> elements."

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/caverock/androidsvg/SVG$TSpan;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$TSpan;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TSpan;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$TSpan;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$TSpan;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_0
.end method

.method private use(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<use>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$Use;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Use;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Use;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesUse(Lcom/caverock/androidsvg/SVG$Use;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private view(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<view>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$View;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$View;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$View;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$View;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private zwitch(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "<switch>"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid document. Root element must be <svg>"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$Switch;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Switch;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Switch;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Switch;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v3, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    :cond_2
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    :cond_4
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v3, v3, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, 0x0

    :goto_1
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v3, :cond_7

    check-cast v2, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object v2, v3

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    new-instance v4, Lcom/caverock/androidsvg/SVG$TextSequence;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVG$TextSequence;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_0
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lorg/xml/sax/ext/DefaultHandler2;->endDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/ext/DefaultHandler2;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "http://www.w3.org/2000/svg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const-string v0, "title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "desc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->setTitle(Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    const-string v1, "desc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->setDesc(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v0, "style"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParser;->parseCSSStyleSheet(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_7
    const-string v0, "svg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "defs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "g"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "use"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "image"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "text"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "tspan"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "switch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "symbol"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "marker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "linearGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "radialGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "clipPath"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "textPath"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "pattern"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "mask"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "solidColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto/16 :goto_0
.end method

.method protected parse(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v2, v6}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v6

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    add-int v1, v6, v7

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    const v6, 0x8b1f

    if-ne v1, v6, :cond_0

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    :try_start_1
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    invoke-interface {v5, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const-string v6, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v5, v6, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    return-object v6

    :catch_0
    move-exception v6

    move-object p1, v2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v6, Lcom/caverock/androidsvg/SVGParseException;

    const-string v7, "File error"

    invoke-direct {v6, v7, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v6

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_3
    throw v6

    :catch_2
    move-exception v0

    :try_start_5
    new-instance v6, Lcom/caverock/androidsvg/SVGParseException;

    const-string v7, "XML Parser problem"

    invoke-direct {v6, v7, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_3
    move-exception v0

    new-instance v6, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SVG parse error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_4
    move-exception v0

    const-string v7, "SVGParser"

    const-string v8, "Exception thrown closing input stream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_5
    move-exception v0

    const-string v6, "SVGParser"

    const-string v7, "Exception thrown closing input stream"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    move-object p1, v2

    goto :goto_1

    :cond_1
    move-object v2, p1

    goto/16 :goto_0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lorg/xml/sax/ext/DefaultHandler2;->startDocument()V

    new-instance v0, Lcom/caverock/androidsvg/SVG;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/ext/DefaultHandler2;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "http://www.w3.org/2000/svg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const-string v0, "svg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->svg(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_3
    const-string v0, "g"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->g(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_4
    const-string v0, "defs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->defs(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_5
    const-string v0, "use"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->use(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_6
    const-string v0, "path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->path(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_7
    const-string v0, "rect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->rect(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_8
    const-string v0, "circle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->circle(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_9
    const-string v0, "ellipse"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->ellipse(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_a
    const-string v0, "line"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->line(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_b
    const-string v0, "polyline"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->polyline(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "polygon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->polygon(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "text"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->text(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "tspan"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->tspan(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "tref"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->tref(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_10
    const-string v0, "switch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->zwitch(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_11
    const-string v0, "symbol"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->symbol(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_12
    const-string v0, "marker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->marker(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_13
    const-string v0, "linearGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->linearGradient(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_14
    const-string v0, "radialGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->radialGradient(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_15
    const-string v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->stop(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_16
    const-string v0, "a"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->g(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_17
    const-string v0, "title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "desc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    iput-object p2, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    goto/16 :goto_0

    :cond_19
    const-string v0, "clipPath"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->clipPath(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_1a
    const-string v0, "textPath"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->textPath(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_1b
    const-string v0, "pattern"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->pattern(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_1c
    const-string v0, "image"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->image(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_1d
    const-string v0, "view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->view(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_1e
    const-string v0, "mask"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->mask(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_1f
    const-string v0, "style"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->style(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_20
    const-string v0, "solidColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->solidColor(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_21
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    goto/16 :goto_0
.end method
