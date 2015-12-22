.class public Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;
.super Ljava/lang/Object;
.source "XSAttributeChecker.java"


# static fields
.field public static final ATTIDX_ABSTRACT:I

.field public static final ATTIDX_AFORMDEFAULT:I

.field public static final ATTIDX_BASE:I

.field public static final ATTIDX_BLOCK:I

.field public static final ATTIDX_BLOCKDEFAULT:I

.field private static ATTIDX_COUNT:I = 0x0

.field public static final ATTIDX_DEFAULT:I

.field public static final ATTIDX_EFORMDEFAULT:I

.field public static final ATTIDX_ENUMNSDECLS:I

.field public static final ATTIDX_FINAL:I

.field public static final ATTIDX_FINALDEFAULT:I

.field public static final ATTIDX_FIXED:I

.field public static final ATTIDX_FORM:I

.field public static final ATTIDX_FROMDEFAULT:I

.field public static final ATTIDX_ID:I

.field public static final ATTIDX_ISRETURNED:I

.field public static final ATTIDX_ITEMTYPE:I

.field public static final ATTIDX_MAXOCCURS:I

.field public static final ATTIDX_MEMBERTYPES:I

.field public static final ATTIDX_MINOCCURS:I

.field public static final ATTIDX_MIXED:I

.field public static final ATTIDX_NAME:I

.field public static final ATTIDX_NAMESPACE:I

.field public static final ATTIDX_NAMESPACE_LIST:I

.field public static final ATTIDX_NILLABLE:I

.field public static final ATTIDX_NONSCHEMA:I

.field public static final ATTIDX_PROCESSCONTENTS:I

.field public static final ATTIDX_PUBLIC:I

.field public static final ATTIDX_REF:I

.field public static final ATTIDX_REFER:I

.field public static final ATTIDX_SCHEMALOCATION:I

.field public static final ATTIDX_SOURCE:I

.field public static final ATTIDX_SUBSGROUP:I

.field public static final ATTIDX_SYSTEM:I

.field public static final ATTIDX_TARGETNAMESPACE:I

.field public static final ATTIDX_TYPE:I

.field public static final ATTIDX_USE:I

.field public static final ATTIDX_VALUE:I

.field public static final ATTIDX_VERSION:I

.field public static final ATTIDX_XML_LANG:I

.field public static final ATTIDX_XPATH:I

.field private static final ATTRIBUTE_N:Ljava/lang/String; = "attribute_n"

.field private static final ATTRIBUTE_R:Ljava/lang/String; = "attribute_r"

.field protected static final DT_ANYURI:I = 0x0

.field protected static final DT_BLOCK:I = -0x1

.field protected static final DT_BLOCK1:I = -0x2

.field protected static final DT_BOOLEAN:I = -0xf

.field protected static final DT_COUNT:I = 0x9

.field protected static final DT_FINAL:I = -0x3

.field protected static final DT_FINAL1:I = -0x4

.field protected static final DT_FINAL2:I = -0x5

.field protected static final DT_FORM:I = -0x6

.field protected static final DT_ID:I = 0x1

.field protected static final DT_LANGUAGE:I = 0x8

.field protected static final DT_MAXOCCURS:I = -0x7

.field protected static final DT_MAXOCCURS1:I = -0x8

.field protected static final DT_MEMBERTYPES:I = -0x9

.field protected static final DT_MINOCCURS1:I = -0xa

.field protected static final DT_NAMESPACE:I = -0xb

.field protected static final DT_NCNAME:I = 0x5

.field protected static final DT_NONNEGINT:I = -0x10

.field protected static final DT_POSINT:I = -0x11

.field protected static final DT_PROCESSCONTENTS:I = -0xc

.field protected static final DT_QNAME:I = 0x2

.field protected static final DT_STRING:I = 0x3

.field protected static final DT_TOKEN:I = 0x4

.field protected static final DT_USE:I = -0xd

.field protected static final DT_WHITESPACE:I = -0xe

.field protected static final DT_XPATH:I = 0x6

.field protected static final DT_XPATH1:I = 0x7

.field private static final ELEMENT_N:Ljava/lang/String; = "element_n"

.field private static final ELEMENT_R:Ljava/lang/String; = "element_r"

.field static final INC_POOL_SIZE:I = 0xa

.field static final INIT_POOL_SIZE:I = 0xa

.field private static final INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_LAX:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_LIST:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_NOT:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_SKIP:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_QUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_UNBOUNDED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_USE_PROHIBITED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_USE_REQUIRED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_WS_COLLAPSE:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_WS_PRESERVE:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_WS_REPLACE:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final fEleAttrsMapG:Ljava/util/Hashtable;

.field private static final fEleAttrsMapL:Ljava/util/Hashtable;

.field private static final fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field private static fSeenTemp:[Z

.field private static fTempArray:[Ljava/lang/Object;

.field private static final fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;


# instance fields
.field fArrayPool:[[Ljava/lang/Object;

.field protected fNamespaceList:Ljava/util/Vector;

.field protected fNonSchemaAttrs:Ljava/util/Hashtable;

.field fPoolPos:I

.field protected fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

.field protected fSeen:[Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 62

    const/16 v56, 0x0

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_AFORMDEFAULT:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCKDEFAULT:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_EFORMDEFAULT:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINALDEFAULT:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ID:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ITEMTYPE:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MEMBERTYPES:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NILLABLE:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PROCESSCONTENTS:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PUBLIC:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REFER:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SOURCE:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SUBSGROUP:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SYSTEM:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TARGETNAMESPACE:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_USE:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ENUMNSDECLS:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VERSION:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XML_LANG:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    new-instance v56, Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-direct/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;-><init>()V

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_QUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x3

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LAX:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x2

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_SKIP:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x3

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LIST:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x2

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_NOT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_REQUIRED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x2

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_PROHIBITED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_PRESERVE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_REPLACE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x2

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_COLLAPSE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, -0x1

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNBOUNDED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    new-instance v56, Ljava/util/Hashtable;

    const/16 v57, 0x1d

    invoke-direct/range {v56 .. v57}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    new-instance v56, Ljava/util/Hashtable;

    const/16 v57, 0x4f

    invoke-direct/range {v56 .. v57}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const/16 v56, 0x9

    move/from16 v0, v56

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v56, v0

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sget-object v55, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v58, 0x0

    const-string v56, "anyURI"

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v56

    check-cast v56, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v56, v57, v58

    sget-object v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v58, 0x1

    const-string v56, "ID"

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v56

    check-cast v56, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v56, v57, v58

    sget-object v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v58, 0x2

    const-string v56, "QName"

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v56

    check-cast v56, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v56, v57, v58

    sget-object v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v58, 0x3

    const-string/jumbo v56, "string"

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v56

    check-cast v56, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v56, v57, v58

    sget-object v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v58, 0x4

    const-string/jumbo v56, "token"

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v56

    check-cast v56, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v56, v57, v58

    sget-object v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v58, 0x5

    const-string v56, "NCName"

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v56

    check-cast v56, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v56, v57, v58

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v57, 0x6

    sget-object v58, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v59, 0x3

    aget-object v58, v58, v59

    aput-object v58, v56, v57

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v57, 0x6

    sget-object v58, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v59, 0x3

    aget-object v58, v58, v59

    aput-object v58, v56, v57

    sget-object v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v58, 0x8

    const-string/jumbo v56, "language"

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v56

    check-cast v56, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v56, v57, v58

    const/16 v52, 0x0

    add-int/lit8 v53, v52, 0x1

    move/from16 v3, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v4, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v6, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v5, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v9, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v7, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v8, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v10, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v11, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v14, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v12, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v13, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v16, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v15, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v17, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v18, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v19, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v21, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v20, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v22, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v24, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v23, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v25, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v26, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v29, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v27, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v28, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v30, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v31, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v32, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v34, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v33, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v36, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v35, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v37, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v38, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v39, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v40, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v41, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v42, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v43, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v44, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v45, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v46, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v47, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v48, v53

    add-int/lit8 v53, v52, 0x1

    move/from16 v50, v52

    add-int/lit8 v52, v53, 0x1

    move/from16 v49, v53

    move/from16 v0, v52

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    move-object/from16 v51, v0

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ABSTRACT:Ljava/lang/String;

    const/16 v58, -0xf

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    sget-object v60, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v3

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ATTRIBUTEFORMDEFAULT:Ljava/lang/String;

    const/16 v58, -0x6

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_AFORMDEFAULT:I

    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v4

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    const/16 v58, 0x2

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v6

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    const/16 v58, 0x2

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v5

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    const/16 v58, -0x1

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v9

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    const/16 v58, -0x2

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v7

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCKDEFAULT:Ljava/lang/String;

    const/16 v58, -0x1

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCKDEFAULT:I

    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v8

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    const/16 v58, 0x3

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v10

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ELEMENTFORMDEFAULT:Ljava/lang/String;

    const/16 v58, -0x6

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_EFORMDEFAULT:I

    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v11

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    const/16 v58, -0x3

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v14

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    const/16 v58, -0x4

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v12

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINALDEFAULT:Ljava/lang/String;

    const/16 v58, -0x5

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINALDEFAULT:I

    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v13

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    const/16 v58, 0x3

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v16

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    const/16 v58, -0xf

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    sget-object v60, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v15

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FORM:Ljava/lang/String;

    const/16 v58, -0x6

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v17

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v58, 0x1

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ID:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v18

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ITEMTYPE:Ljava/lang/String;

    const/16 v58, 0x2

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ITEMTYPE:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v19

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    const/16 v58, -0x7

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v60

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v21

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    const/16 v58, -0x8

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v60

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v20

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MEMBERTYPES:Ljava/lang/String;

    const/16 v58, -0x9

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MEMBERTYPES:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v22

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    const/16 v58, -0x10

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v60

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v24

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    const/16 v58, -0xa

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v60

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v23

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    const/16 v58, -0xf

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    sget-object v60, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v25

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    const/16 v58, -0xf

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v26

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    const/16 v58, 0x5

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v29

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    const/16 v58, -0xb

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v27

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    const/16 v58, 0x0

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v28

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NILLABLE:Ljava/lang/String;

    const/16 v58, -0xf

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NILLABLE:I

    sget-object v60, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v30

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PROCESSCONTENTS:Ljava/lang/String;

    const/16 v58, -0xc

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PROCESSCONTENTS:I

    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v31

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PUBLIC:Ljava/lang/String;

    const/16 v58, 0x4

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PUBLIC:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v32

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    const/16 v58, 0x2

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v34

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REFER:Ljava/lang/String;

    const/16 v58, 0x2

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REFER:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v33

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    const/16 v58, 0x0

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v36

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    const/16 v58, 0x0

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v35

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    const/16 v58, 0x0

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SOURCE:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v37

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SUBSTITUTIONGROUP:Ljava/lang/String;

    const/16 v58, 0x2

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SUBSGROUP:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v38

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SYSTEM:Ljava/lang/String;

    const/16 v58, 0x0

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SYSTEM:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v39

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TARGETNAMESPACE:Ljava/lang/String;

    const/16 v58, 0x0

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TARGETNAMESPACE:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v40

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    const/16 v58, 0x2

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v41

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_USE:Ljava/lang/String;

    const/16 v58, -0xd

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_USE:I

    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v42

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/16 v58, -0x10

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v43

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/16 v58, -0x11

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v44

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/16 v58, 0x3

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v45

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/16 v58, -0xe

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v46

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VERSION:Ljava/lang/String;

    const/16 v58, 0x4

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VERSION:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v47

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    const/16 v58, 0x8

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XML_LANG:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v48

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    const/16 v58, 0x6

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v50

    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    const/16 v58, 0x7

    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v56, v51, v49

    const/16 v56, 0x5

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v57, v51, v10

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v57, v51, v16

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v57, v51, v41

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x7

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v57, v51, v10

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v57, v51, v16

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FORM:Ljava/lang/String;

    aget-object v57, v51, v17

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v57, v51, v41

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_USE:Ljava/lang/String;

    aget-object v57, v51, v42

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string v57, "attribute_n"

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x5

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v57, v51, v10

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v57, v51, v16

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v57, v51, v34

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_USE:Ljava/lang/String;

    aget-object v57, v51, v42

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string v57, "attribute_r"

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0xa

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ABSTRACT:Ljava/lang/String;

    aget-object v57, v51, v3

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    aget-object v57, v51, v9

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v57, v51, v10

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    aget-object v57, v51, v14

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v57, v51, v16

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NILLABLE:Ljava/lang/String;

    aget-object v57, v51, v30

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SUBSTITUTIONGROUP:Ljava/lang/String;

    aget-object v57, v51, v38

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v57, v51, v41

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0xa

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    aget-object v57, v51, v9

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v57, v51, v10

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v57, v51, v16

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FORM:Ljava/lang/String;

    aget-object v57, v51, v17

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v57, v51, v21

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v57, v51, v24

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NILLABLE:Ljava/lang/String;

    aget-object v57, v51, v30

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v57, v51, v41

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string v57, "element_n"

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x4

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v57, v51, v21

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v57, v51, v24

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v57, v51, v34

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string v57, "element_r"

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x6

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ABSTRACT:Ljava/lang/String;

    aget-object v57, v51, v3

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    aget-object v57, v51, v7

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    aget-object v57, v51, v14

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    aget-object v57, v51, v25

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x4

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PUBLIC:Ljava/lang/String;

    aget-object v57, v51, v32

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SYSTEM:Ljava/lang/String;

    aget-object v57, v51, v39

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    aget-object v57, v51, v25

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x1

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLECONTENT:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    aget-object v57, v51, v5

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    aget-object v57, v51, v6

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v57, v51, v34

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    aget-object v57, v51, v27

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PROCESSCONTENTS:Ljava/lang/String;

    aget-object v57, v51, v31

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANYATTRIBUTE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    aget-object v57, v51, v26

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXCONTENT:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x4

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v57, v51, v21

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v57, v51, v24

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v57, v51, v34

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v57, v51, v20

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v57, v51, v23

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v57, v51, v21

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v57, v51, v24

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x5

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v57, v51, v21

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v57, v51, v24

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    aget-object v57, v51, v27

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PROCESSCONTENTS:Ljava/lang/String;

    aget-object v57, v51, v31

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANY:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNIQUE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEY:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REFER:Ljava/lang/String;

    aget-object v57, v51, v33

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    aget-object v57, v51, v50

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    aget-object v57, v51, v49

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x1

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x1

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    aget-object v57, v51, v37

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    aget-object v57, v51, v37

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    aget-object v57, v51, v48

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    aget-object v57, v51, v12

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    aget-object v57, v51, v12

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ITEMTYPE:Ljava/lang/String;

    aget-object v57, v51, v19

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LIST:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MEMBERTYPES:Ljava/lang/String;

    aget-object v57, v51, v22

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNION:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x8

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ATTRIBUTEFORMDEFAULT:Ljava/lang/String;

    aget-object v57, v51, v4

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCKDEFAULT:Ljava/lang/String;

    aget-object v57, v51, v8

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ELEMENTFORMDEFAULT:Ljava/lang/String;

    aget-object v57, v51, v11

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINALDEFAULT:Ljava/lang/String;

    aget-object v57, v51, v13

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TARGETNAMESPACE:Ljava/lang/String;

    aget-object v57, v51, v40

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VERSION:Ljava/lang/String;

    aget-object v57, v51, v47

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    aget-object v57, v51, v48

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    aget-object v57, v51, v36

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    aget-object v57, v51, v28

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    aget-object v57, v51, v35

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_IMPORT:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v57, v51, v43

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v57, v51, v15

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LENGTH:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINLENGTH:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXLENGTH:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FRACTIONDIGITS:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v57, v51, v44

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v57, v51, v15

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_TOTALDIGITS:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v57, v51, v45

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_PATTERN:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v57, v51, v45

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v57, v51, v46

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v57, v51, v15

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_WHITESPACE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v57, v51, v45

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v57, v51, v15

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXINCLUSIVE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXEXCLUSIVE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MININCLUSIVE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINEXCLUSIVE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    move/from16 v0, v56

    new-array v0, v0, [Z

    move-object/from16 v56, v0

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeenTemp:[Z

    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    move/from16 v0, v56

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v56, v0

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fTempArray:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNonSchemaAttrs:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    const/16 v0, 0xa

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    return-void
.end method

.method public static normalize(Ljava/lang/String;S)Ljava/lang/String;
    .locals 10

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/16 v7, 0x9

    const/16 v6, 0x20

    if-nez p0, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    if-nez p1, :cond_2

    :cond_0
    :goto_1
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x1

    if-ne p1, v5, :cond_6

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v3, :cond_4

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_5

    if-eq v0, v8, :cond_5

    if-eq v0, v9, :cond_5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_a

    if-eq v0, v8, :cond_a

    if-eq v0, v9, :cond_a

    if-eq v0, v6, :cond_a

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_9

    if-eq v0, v8, :cond_9

    if-eq v0, v9, :cond_9

    if-eq v0, v6, :cond_9

    :goto_6
    add-int/lit8 v5, v3, -0x1

    if-ge v1, v5, :cond_7

    if-nez v2, :cond_7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, 0x1

    :cond_a
    add-int/lit8 v5, v3, -0x1

    if-lt v1, v5, :cond_8

    goto :goto_6
.end method

.method private validate([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-nez p3, :cond_1

    const/4 v14, 0x0

    :cond_0
    :goto_0
    return-object v14

    :cond_1
    invoke-static/range {p3 .. p3}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x0

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    move-object v1, v14

    check-cast v1, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v1

    if-gtz v1, :cond_0

    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "positiveInteger"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_1
    const-string/jumbo v1, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_6
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "boolean"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_2
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_7
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    move-object v1, v14

    check-cast v1, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "nonNegativeInteger"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :catch_0
    move-exception v8

    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "nonNegativeInteger"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v8

    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "positiveInteger"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_3
    const/4 v7, 0x0

    const-string v1, "#all"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v7, 0x1f

    :cond_8
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v14

    goto/16 :goto_0

    :cond_9
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v1, " \n\t\r"

    invoke-direct {v15, v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    const-string v1, "extension"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_a
    const-string/jumbo v1, "restriction"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit8 v7, v7, 0x2

    goto :goto_1

    :cond_b
    const-string/jumbo v1, "substitution"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit8 v7, v7, 0x4

    goto :goto_1

    :cond_c
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.3"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(#all | List of (extension | restriction | substitution))"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_4
    const/4 v7, 0x0

    const-string v1, "#all"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v7, 0x1f

    :cond_d
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v14

    goto/16 :goto_0

    :cond_e
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v1, " \n\t\r"

    invoke-direct {v15, v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    const-string v1, "extension"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    or-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_f
    const-string/jumbo v1, "restriction"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    or-int/lit8 v7, v7, 0x2

    goto :goto_2

    :cond_10
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.3"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(#all | List of (extension | restriction))"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_5
    const/4 v7, 0x0

    const-string v1, "#all"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v7, 0x1f

    :cond_11
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v14

    goto/16 :goto_0

    :cond_12
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v1, " \n\t\r"

    invoke-direct {v15, v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v1, "list"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    or-int/lit8 v7, v7, 0x10

    goto :goto_3

    :cond_13
    const-string/jumbo v1, "union"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    or-int/lit8 v7, v7, 0x8

    goto :goto_3

    :cond_14
    const-string/jumbo v1, "restriction"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    or-int/lit8 v7, v7, 0x2

    goto :goto_3

    :cond_15
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.3"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(#all | List of (list | union | restriction))"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_6
    const/4 v7, 0x0

    const-string v1, "#all"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v7, 0x1f

    :cond_16
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v14

    goto/16 :goto_0

    :cond_17
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v1, " \n\t\r"

    invoke-direct {v15, v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    const-string v1, "extension"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    or-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_18
    const-string/jumbo v1, "restriction"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    or-int/lit8 v7, v7, 0x2

    goto :goto_4

    :cond_19
    const-string/jumbo v1, "list"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    or-int/lit8 v7, v7, 0x10

    goto :goto_4

    :cond_1a
    const-string/jumbo v1, "union"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    or-int/lit8 v7, v7, 0x8

    goto :goto_4

    :cond_1b
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.3"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(#all | List of (extension | restriction | list | union))"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_7
    const-string/jumbo v1, "qualified"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_QUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v1, "unqualified"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_1d
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-enumeration-valid"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(qualified | unqualified)"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_8
    const-string/jumbo v1, "unbounded"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNBOUNDED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_1e
    const/16 v5, -0x10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->validate([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v14

    goto/16 :goto_0

    :catch_2
    move-exception v8

    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.3"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(nonNegativeInteger | unbounded)"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_9
    const-string v1, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v14

    goto/16 :goto_0

    :cond_1f
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-enumeration-valid"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(1)"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_a
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    :try_start_3
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v1, " \n\t\r"

    invoke-direct {v15, v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_20

    move-object v14, v11

    goto/16 :goto_0

    :cond_20
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    move-object/from16 v0, p5

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v2, v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v13, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v1, v2, :cond_21

    iget-object v1, v13, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v1, :cond_21

    move-object/from16 v0, p5

    iget-boolean v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    if-eqz v1, :cond_21

    move-object/from16 v0, p5

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v1, v13, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :cond_21
    invoke-virtual {v11, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v9

    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.2"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(List of QName)"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_b
    const-string v1, "0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v14

    goto/16 :goto_0

    :cond_22
    const-string v1, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v14

    goto/16 :goto_0

    :cond_23
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-enumeration-valid"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(0 | 1)"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_c
    const-string v1, "##any"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_24
    const-string v1, "##other"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_NOT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p5

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    aput-object v2, v10, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v10, v1

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    aput-object v10, p1, v1

    goto/16 :goto_0

    :cond_25
    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LIST:Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    new-instance v18, Ljava/util/StringTokenizer;

    const-string v1, " \n\t\r"

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_6
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_4
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v1

    if-nez v1, :cond_27

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v12

    new-array v10, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v1, v10}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    aput-object v10, p1, v1

    goto/16 :goto_0

    :cond_27
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    const-string v1, "##local"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v16, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_5
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v9

    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.3"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "((##any | ##other) | List of (anyURI | (##targetNamespace | ##local)) )"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_28
    :try_start_6
    const-string v1, "##targetNamespace"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    move-object/from16 v0, p5

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_7

    :cond_29
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p5

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v2, v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v16

    goto :goto_7

    :pswitch_d
    const-string/jumbo v1, "strict"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_2a
    const-string/jumbo v1, "lax"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LAX:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_2b
    const-string/jumbo v1, "skip"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_SKIP:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_2c
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-enumeration-valid"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(lax | skip | strict)"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_e
    const-string/jumbo v1, "optional"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_2d
    const-string/jumbo v1, "required"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_REQUIRED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_2e
    const-string/jumbo v1, "prohibited"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_PROHIBITED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_2f
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-enumeration-valid"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(optional | prohibited | required)"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_f
    const-string/jumbo v1, "preserve"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_PRESERVE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_30
    const-string/jumbo v1, "replace"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_REPLACE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_31
    const-string v1, "collapse"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_COLLAPSE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_32
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-enumeration-valid"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(preserve | replace | collapse)"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_data_0
    .packed-switch -0x11
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Z)[Ljava/lang/Object;
    .locals 31

    if-nez p1, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrs(Lmf/org/w3c/dom/Element;)[Lmf/org/w3c/dom/Attr;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->resolveNamespace(Lmf/org/w3c/dom/Element;[Lmf/org/w3c/dom/Attr;Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNamespaceURI(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v14

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "s4s-elt-schema-ns"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v6, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_2
    sget-object v15, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    move-object/from16 v21, v14

    if-nez p2, :cond_3

    sget-object v15, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lmf/org/apache/xerces/util/DOMUtil;->getAttr(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v21, "element_r"

    :cond_3
    :goto_1
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/impl/xs/traversers/Container;

    if-nez v8, :cond_7

    const-string/jumbo v2, "s4s-elt-invalid"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v6, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const-string v21, "element_n"

    goto :goto_1

    :cond_5
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lmf/org/apache/xerces/util/DOMUtil;->getAttr(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v21, "attribute_r"

    goto :goto_1

    :cond_6
    const-string v21, "attribute_n"

    goto :goto_1

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->getAvailableArray()[Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v16, 0x0

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeenTemp:[Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    const/16 v29, 0x0

    sget v30, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v2, v6, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v11

    move/from16 v20, v0

    const/16 v27, 0x0

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_8

    iget-object v0, v8, Lmf/org/apache/xerces/impl/xs/traversers/Container;->values:[Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    move-object/from16 v26, v0

    const/16 v18, 0x0

    :goto_3
    move-object/from16 v0, v26

    array-length v2, v0

    move/from16 v0, v18

    if-lt v0, v2, :cond_15

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    new-instance v6, Ljava/lang/Long;

    move-wide/from16 v0, v16

    invoke-direct {v6, v0, v1}, Ljava/lang/Long;-><init>(J)V

    aput-object v6, v3, v2

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v2, v3, v2

    if-eqz v2, :cond_0

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v2, v3, v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v23

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v2, v3, v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v22

    const/4 v2, -0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_0

    move/from16 v0, v23

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    const-string/jumbo v2, "p-props-correct.2.1"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    const/4 v7, 0x1

    sget v29, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v29, v3, v29

    aput-object v29, v6, v7

    const/4 v7, 0x2

    sget v29, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v29, v3, v29

    aput-object v29, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v6, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    sget v6, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v6, v3, v6

    aput-object v6, v3, v2

    goto/16 :goto_0

    :cond_8
    aget-object v27, v11, v18

    invoke-interface/range {v27 .. v27}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v27 .. v27}, Lmf/org/apache/xerces/util/DOMUtil;->getNamespaceURI(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v27 .. v27}, Lmf/org/apache/xerces/util/DOMUtil;->getValue(Lmf/org/w3c/dom/Attr;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "xml"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static/range {v27 .. v27}, Lmf/org/apache/xerces/util/DOMUtil;->getPrefix(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v2, "xmlns"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "xmlns"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    :cond_a
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    const/4 v10, 0x0

    :cond_c
    if-eqz v10, :cond_f

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "s4s-att-not-allowed"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v6, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_4

    :cond_d
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v2, v3, v2

    if-nez v2, :cond_e

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    new-instance v6, Ljava/util/Vector;

    const/4 v7, 0x4

    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-direct {v6, v7, v0}, Ljava/util/Vector;-><init>(II)V

    aput-object v6, v3, v2

    :cond_e
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v2, v3, v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v2, v3, v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    :cond_f
    invoke-virtual {v8, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->get(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    move-result-object v24

    if-nez v24, :cond_10

    const-string/jumbo v2, "s4s-att-not-allowed"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v6, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    move-object/from16 v0, v24

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    :try_start_0
    move-object/from16 v0, v24

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    if-ltz v2, :cond_14

    move-object/from16 v0, v24

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    const/4 v6, 0x3

    if-eq v2, v6, :cond_13

    move-object/from16 v0, v24

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    const/4 v6, 0x6

    if-eq v2, v6, :cond_13

    move-object/from16 v0, v24

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    const/4 v6, 0x7

    if-eq v2, v6, :cond_13

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, v24

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    aget-object v13, v2, v6

    move-object/from16 v0, p3

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v6, 0x0

    invoke-interface {v13, v5, v2, v6}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, v24

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_11

    move-object v0, v12

    check-cast v0, Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v2, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v2, v6, :cond_11

    move-object/from16 v0, v25

    iget-object v2, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v2, :cond_11

    move-object/from16 v0, p3

    iget-boolean v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p3

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v2, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :cond_11
    move-object/from16 v0, v24

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    aput-object v12, v3, v2
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_12
    :goto_5
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz p4, :cond_9

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ENUMNSDECLS:I

    new-instance v6, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    move-object/from16 v0, p3

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v6, v7}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;-><init>(Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    aput-object v6, v3, v2

    goto/16 :goto_4

    :cond_13
    :try_start_1
    move-object/from16 v0, v24

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    aput-object v5, v3, v2
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v19

    const-string/jumbo v2, "s4s-att-invalid-value"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    invoke-virtual/range {v19 .. v19}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getMessage()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v6, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, v24

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    if-eqz v2, :cond_12

    move-object/from16 v0, v24

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    move-object/from16 v0, v24

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    aput-object v6, v3, v2

    goto :goto_5

    :cond_14
    :try_start_2
    move-object/from16 v0, v24

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    move/from16 v29, v0

    move-object/from16 v0, v24

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->validate([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v29
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :cond_15
    aget-object v24, v26, v18

    move-object/from16 v0, v24

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    move-object/from16 v0, v24

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    aget-boolean v2, v2, v6

    if-nez v2, :cond_16

    move-object/from16 v0, v24

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    move-object/from16 v0, v24

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    aput-object v6, v3, v2

    const/4 v2, 0x1

    move-object/from16 v0, v24

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    shl-int/2addr v2, v6

    int-to-long v6, v2

    or-long v16, v16, v6

    :cond_16
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3
.end method

.method public checkNonSchemaAttributes(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNonSchemaAttrs:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_1

    return-void

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v18, 0x2c

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eqz v10, :cond_0

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Vector;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v9

    const/4 v14, 0x1

    :goto_0
    if-ge v14, v9, :cond_0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    add-int/lit8 v18, v14, 0x1

    :try_start_0
    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v10, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v14, v14, 0x2

    goto :goto_0

    :catch_0
    move-exception v15

    const-string/jumbo v18, "s4s-att-invalid-value"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v11, v19, v20

    const/16 v20, 0x1

    aput-object v6, v19, v20

    const/16 v20, 0x2

    invoke-virtual {v15}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1
.end method

.method protected getAvailableArray()[Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    array-length v2, v2

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    add-int/lit8 v2, v2, 0xa

    new-array v2, v2, [[Ljava/lang/Object;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    aget-object v1, v2, v3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fTempArray:[Ljava/lang/Object;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    return-object v1

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-void
.end method

.method public reset(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNonSchemaAttrs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public resolveNamespace(Lmf/org/w3c/dom/Element;[Lmf/org/w3c/dom/Attr;Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V
    .locals 8

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->pushContext()V

    array-length v1, p2

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v4, p2, v0

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getValue(Lmf/org/w3c/dom/Attr;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    invoke-virtual {p3, v2, v5}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "xmlns:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->popContext()V

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    if-ne v0, v1, :cond_1

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, p1, v0

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v0, p1, v0

    if-eqz v0, :cond_3

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v0, p1, v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    aput-object p1, v0, v1

    goto :goto_0
.end method
